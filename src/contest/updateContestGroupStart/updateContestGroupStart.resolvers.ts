import client from "../../client";

const updateContestGroupStartResolvers = async (
  _,
  { contestTeamId, opponentTeamId }
) => {
  const date = new Date();
  const hour = date.getHours();
  const min = date.getMinutes();

  const updateData = await client.contestGroupMatchHistory.update({
    where: {
      contestTeamId_opponentTeamId: {
        contestTeamId,
        opponentTeamId,
      },
    },
    data: {
      status: "SCORE_DONE",
      matchTime: hour + ":" + min,
      matchTimeHour: hour + "",
      matchTimeMin: min + "",
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
      status: "SCORE_DONE",
      matchTime: hour + ":" + min,
      matchTimeHour: hour + "",
      matchTimeMin: min + "",
    },
  });

  return {
    ok: true,
  };
};

export default {
  Mutation: {
    updateContestGroupStart: updateContestGroupStartResolvers,
  },
};
