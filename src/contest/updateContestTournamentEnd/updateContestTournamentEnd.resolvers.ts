import client from "../../client";

const updateContestTournamentEndResolvers = async (
  _,
  {
    id,
    contestId,
    contestMatchGroupId,
    contestTeamId,
    contestCourtId,
    nextMatchId,
    matchNo,
    startTimeHour,
    startTimeMin,
    opponentTeamId,
    contestTeamScore,
    opponentTeamScore,
    topPartyTeamId,
    bottomPartyTeamId,
    topPartyTeamName,
    bottomPartyTeamName,
  }
) => {
  await client.contestTournamentGroup.update({
    where: {
      id,
    },
    data: {
      state: "DONE",
    },
  });

  await client.contestTournamentHistory.update({
    where: {
      id: contestTeamId,
    },
    data: {
      ...(contestCourtId !== undefined &&
        contestCourtId !== null && {
          contestCourt: {
            connect: {
              id: contestCourtId,
            },
          },
        }),

      isWinner: contestTeamScore > opponentTeamScore ? true : false,
      resultText: contestTeamScore + "",
      loseScore: opponentTeamScore,
      totalScore: contestTeamScore + " : " + opponentTeamScore,
      status: "DONE",
    },
  });

  await client.contestTournamentHistory.update({
    where: {
      id: opponentTeamId,
    },
    data: {
      ...(contestCourtId !== undefined &&
        contestCourtId !== null && {
          contestCourt: {
            connect: {
              id: contestCourtId,
            },
          },
        }),
      isWinner: opponentTeamScore > contestTeamScore ? true : false,
      resultText: opponentTeamScore + "",
      loseScore: contestTeamScore,
      totalScore: opponentTeamScore + " : " + contestTeamScore,
      status: "DONE",
    },
  });

  await client.contestTournamentGroup.update({
    where: {
      id: nextMatchId,
    },
    data: {
      matchNo,
      ...(contestTeamScore > opponentTeamScore && {
        contestTeam: {
          connect: {
            id: topPartyTeamId,
          },
        },
      }),
      ...(contestTeamScore < opponentTeamScore && {
        contestTeam: {
          connect: {
            id: bottomPartyTeamId,
          },
        },
      }),
    },
  });

  const nextTournament = await client.contestTournamentHistory.findMany({
    where: {
      contestTournamentGroupId: nextMatchId,
    },
    orderBy: [{ contestTeamId: "desc" }],
  });

  nextTournament.map(async (next, index) => {
    if (index === 0) {
      await client.contestTournamentHistory.update({
        where: {
          id: next.id,
        },
        data: {
          ...(contestTeamScore > opponentTeamScore && {
            name: topPartyTeamName,
            contestTeam: {
              connect: {
                id: topPartyTeamId,
              },
            },
          }),
          ...(contestTeamScore < opponentTeamScore && {
            name: bottomPartyTeamName,
            contestTeam: {
              connect: {
                id: bottomPartyTeamId,
              },
            },
          }),
        },
      });
    } else if (index === 1) {
      await client.contestTournamentHistory.update({
        where: {
          id: next.id,
        },
        data: {
          ...(contestTeamScore > opponentTeamScore && {
            opponentTeam: {
              connect: {
                id: topPartyTeamId,
              },
            },
          }),
          ...(contestTeamScore < opponentTeamScore && {
            opponentTeam: {
              connect: {
                id: bottomPartyTeamId,
              },
            },
          }),
        },
      });
    }
  });

  return {
    ok: true,
  };
};

export default {
  Mutation: {
    updateContestTournamentEnd: updateContestTournamentEndResolvers,
  },
};
