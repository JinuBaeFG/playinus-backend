import client from "../../client";

const updateContestGroupHistoryResolvers = async (
  _,
  {
    contestId,
    contestMatchGroupId,
    contestTeamId,
    contestCourtId,
    matchNo,
    matchTimeHour,
    matchTimeMin,
    opponentTeamId,
    contestTeamScore,
    opponentTeamScore,
  }
) => {
  await client.contestGroupMatchHistory.update({
    where: {
      contestTeamId_opponentTeamId: {
        contestTeamId,
        opponentTeamId,
      },
    },
    data: {
      matchNo,
      ...(contestCourtId !== undefined &&
        contestCourtId !== null && {
          contestCourt: {
            connect: {
              id: contestCourtId,
            },
          },
        }),
      matchTime: matchTimeHour + ":" + matchTimeMin,
      matchTimeHour,
      matchTimeMin,
      winScore: contestTeamScore,
      loseScore: opponentTeamScore,
      resultScore: contestTeamScore + " : " + opponentTeamScore,
    },
  });

  await client.contestGroupMatchHistory.update({
    where: {
      contestTeamId_opponentTeamId: {
        contestTeamId: opponentTeamId,
        opponentTeamId: contestTeamId,
      },
    },
    data: {
      matchNo,
      ...(contestCourtId !== undefined &&
        contestCourtId !== null && {
          contestCourt: {
            connect: {
              id: contestCourtId,
            },
          },
        }),
      matchTime: matchTimeHour + ":" + matchTimeMin,
      matchTimeHour,
      matchTimeMin,
      winScore: opponentTeamScore,
      loseScore: contestTeamScore,
      resultScore: opponentTeamScore + " : " + contestTeamScore,
    },
  });

  return {
    ok: true,
  };
};

export default {
  Mutation: {
    updateContestGroupHistory: updateContestGroupHistoryResolvers,
  },
};
