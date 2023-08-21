import client from "../../client";

const updateContestTournamentHistoryResolvers = async (
  _,
  {
    contestTournamentGroupId,
    contestTeamHistoryId,
    opponentTeamHistoryId,
    contestTeamId,
    contestTeamName,
    groupTierId,
    contestId,
  }
) => {
  await client.contestTournamentHistory.update({
    where: {
      id: contestTeamHistoryId,
    },
    data: {
      contestTournamentGroup: {
        connect: {
          id: contestTournamentGroupId,
        },
      },
      contestTeam: {
        connect: {
          id: contestTeamId,
        },
      },
      name: contestTeamName,
    },
  });

  await client.contestTournamentHistory.update({
    where: {
      id: opponentTeamHistoryId,
    },
    data: {
      contestTournamentGroup: {
        connect: {
          id: contestTournamentGroupId,
        },
      },
      opponentTeam: {
        connect: {
          id: contestTeamId,
        },
      },
    },
  });

  await client.contestTournamentGroup.update({
    where: {
      id: contestTournamentGroupId,
    },
    data: {
      contestTeam: {
        connect: {
          id: contestTeamId,
        },
      },
    },
  });

  return {
    ok: true,
  };
};

export default {
  Mutation: {
    updateContestTournamentHistory: updateContestTournamentHistoryResolvers,
  },
};
