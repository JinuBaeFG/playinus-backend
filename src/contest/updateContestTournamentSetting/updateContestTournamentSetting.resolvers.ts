import client from "../../client";

const updateContestTournamentSettingResolvers = async (
  _,
  {
    contestId,
    id,
    contestTeamId,
    contestCourtId,
    matchNo,
    startTimeHour,
    startTimeMin,
    opponentTeamId,
    contestTeamScore,
    opponentTeamScore,
  }
) => {
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
      resultText: contestTeamScore + "",
      loseScore: opponentTeamScore,
      totalScore: contestTeamScore + " : " + opponentTeamScore,
    },
  });

  await client.contestTournamentGroup.update({
    where: {
      id,
    },
    data: {
      matchNo,
      startTime: startTimeHour + ":" + startTimeMin,
      startTimeHour: startTimeHour + "",
      startTimeMin: startTimeMin + "",
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
      resultText: opponentTeamScore + "",
      loseScore: contestTeamScore,
      totalScore: opponentTeamScore + " : " + contestTeamScore,
    },
  });

  return {
    ok: true,
  };
};

export default {
  Mutation: {
    updateContestTournamentSetting: updateContestTournamentSettingResolvers,
  },
};
