import client from "../../client";

const seeContestTournamentHistoryResolvers = async (
  _,
  { contestGroupTierId }
) => {
  return await client.contestTournamentHistory.findMany({
    where: {
      contestTierGroup: { id: contestGroupTierId },
    },
    include: {
      contest: true,
      contestTeam: true,
      opponentTeam: true,
      contestCourt: true,
      contestTournamentGroup: true,
    },
    orderBy: {
      createdAt: "asc",
    },
  });
};

export default {
  Query: {
    seeContestTournamentHistory: seeContestTournamentHistoryResolvers,
  },
};
