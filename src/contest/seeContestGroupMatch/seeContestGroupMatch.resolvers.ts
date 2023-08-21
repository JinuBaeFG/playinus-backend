import client from "../../client";

const seeContestGroupMatchResolvers = async (_, { contestGroupId }) => {
  return await client.contestMatchGroup.findMany({
    where: {
      contestTierGroupId: contestGroupId,
    },
    include: {
      contestTeam: {
        include: {
          contestUser: true,
          contestGroupMatchResult: {
            orderBy: [
              {
                totalWin: "asc",
              },
              { totalScore: "asc" },
              { totalWinScore: "asc" },
            ],
          },
        },
      },
    },
  });
};

export default {
  Query: {
    seeContestGroupMatch: seeContestGroupMatchResolvers,
  },
};
