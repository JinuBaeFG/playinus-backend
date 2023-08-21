import client from "../../client";

const seeContestTournamentGroupResolvers = async (_, { contestGroupId }) => {
  return await client.contestTournamentGroup.findMany({
    where: {
      contestTierGroup: {
        id: contestGroupId,
      },
    },
    include: {
      participants: {
        include: {
          contestCourt: true,
          contestTeam: true,
        },
      },
    },
    orderBy: [
      {
        tournamentRoundText: "asc",
      },
    ],
  });
};

export default {
  Query: {
    seeContestTournamentGroup: seeContestTournamentGroupResolvers,
  },
};
