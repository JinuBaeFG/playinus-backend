import client from "../../client";

const updateContestGroupEndResolvers = async (
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
      isWinner: contestTeamScore > opponentTeamScore ? true : false,
      winScore: contestTeamScore,
      loseScore: opponentTeamScore,
      resultScore: contestTeamScore + " : " + opponentTeamScore,
      status: "DONE",
    },
  });

  const contestTeamResult = await client.contestGroupMatchResult.findUnique({
    where: {
      contestMatchGroupId_contestTeamId: {
        contestMatchGroupId,
        contestTeamId,
      },
    },
  });

  await client.contestGroupMatchResult.update({
    where: {
      contestMatchGroupId_contestTeamId: {
        contestMatchGroupId,
        contestTeamId,
      },
    },
    data: {
      totalWin:
        contestTeamScore > opponentTeamScore
          ? contestTeamResult.totalWin + 1
          : contestTeamResult.totalWin + 0,
      totalLose:
        contestTeamScore < opponentTeamScore
          ? contestTeamResult.totalLose + 1
          : contestTeamResult.totalLose + 0,
      totalWinScore: contestTeamResult.totalWinScore + contestTeamScore,
      totalLoseScore: contestTeamResult.totalLoseScore + opponentTeamScore,
      totalScore:
        contestTeamResult.totalScore + (contestTeamScore - opponentTeamScore),
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
      isWinner: opponentTeamScore > contestTeamScore ? true : false,
      winScore: opponentTeamScore,
      loseScore: contestTeamScore,
      resultScore: opponentTeamScore + " : " + contestTeamScore,
      status: "DONE",
    },
  });

  const opponentTeamResult = await client.contestGroupMatchResult.findUnique({
    where: {
      contestMatchGroupId_contestTeamId: {
        contestMatchGroupId,
        contestTeamId: opponentTeamId,
      },
    },
  });

  await client.contestGroupMatchResult.update({
    where: {
      contestMatchGroupId_contestTeamId: {
        contestMatchGroupId,
        contestTeamId: opponentTeamId,
      },
    },
    data: {
      totalWin:
        opponentTeamScore > contestTeamScore
          ? opponentTeamResult.totalWin + 1
          : opponentTeamResult.totalWin + 0,
      totalLose:
        opponentTeamScore < contestTeamScore
          ? opponentTeamResult.totalLose + 1
          : opponentTeamResult.totalLose + 0,
      totalWinScore: opponentTeamResult.totalWinScore + opponentTeamScore,
      totalLoseScore: opponentTeamResult.totalLoseScore + contestTeamScore,
      totalScore:
        opponentTeamResult.totalScore + (opponentTeamScore - contestTeamScore),
    },
  });

  return {
    ok: true,
  };
};

export default {
  Mutation: {
    updateContestGroupEnd: updateContestGroupEndResolvers,
  },
};
