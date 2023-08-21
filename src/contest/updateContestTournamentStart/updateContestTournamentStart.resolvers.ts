import client from "../../client";

const updateContestTournamentStartResolvers = async (
  _,
  { id, contestTeamId, opponentTeamId }
) => {
  console.log(id);
  const date = new Date();
  const hour = date.getHours();
  const min = date.getMinutes();

  await client.contestTournamentGroup.update({
    where: {
      id,
    },
    data: {
      startTime: hour + ":" + min,
      startTimeHour: hour + "",
      startTimeMin: min + "",
    },
  });

  const updateData = await client.contestTournamentHistory.update({
    where: {
      id: contestTeamId,
    },
    data: {
      status: "SCORE_DONE",
    },
  });

  await client.contestTournamentHistory.update({
    where: {
      id: opponentTeamId,
    },
    data: {
      status: "SCORE_DONE",
    },
  });

  return {
    ok: true,
  };
};

export default {
  Mutation: {
    updateContestTournamentStart: updateContestTournamentStartResolvers,
  },
};
