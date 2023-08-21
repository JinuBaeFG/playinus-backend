import client from "../../client";

const createContestTournamentResolvers = async (
  _,
  { contestId, contestGroupId, totalRound, roundAdvance }
) => {
  let roundCount = 1;
  let matchCount = 1;
  let nextMatchId = [];
  let tournamentGroup;
  let nextMatchIndex = 0;
  let insertIndex = 0;

  await client.contestTierGroup.update({
    where: {
      id: contestGroupId,
    },
    data: {
      roundAdvance,
      startRound: totalRound,
    },
  });

  for (var i = 1; i < totalRound; i++) {
    if (totalRound === matchCount) {
      return {
        ok: true,
      };
    }

    for (var j = 0; j < matchCount; j++) {
      if (j % 2 == 0 && i > 2) {
        insertIndex++;
      }
      tournamentGroup = await client.contestTournamentGroup.create({
        data: {
          contest: {
            connect: {
              contestId,
            },
          },
          contestTierGroup: {
            connect: {
              id: contestGroupId,
            },
          },
          state: "NO_PARTY",
          name: roundCount.toString(),
          nextMatchId: nextMatchId[insertIndex],
          tournamentRoundText: roundCount.toString(),
        },
      });

      for (var k = 0; k < 2; k++) {
        await client.contestTournamentHistory.create({
          data: {
            status: "NO_PARTY",
            contest: {
              connect: {
                contestId,
              },
            },
            contestTierGroup: {
              connect: {
                id: contestGroupId,
              },
            },
            contestTournamentGroup: {
              connect: {
                id: tournamentGroup.id,
              },
            },
          },
        });
      }
      nextMatchId[nextMatchIndex] = tournamentGroup.id;
      nextMatchIndex++;
    }

    matchCount = matchCount * 2;
    roundCount++;
  }
};

export default {
  Mutation: {
    createContestTournament: createContestTournamentResolvers,
  },
};
