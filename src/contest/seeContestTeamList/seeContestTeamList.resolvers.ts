import client from "../../client";

const seeContestTeamListResolvers = async (_, { contestId }) => {
  return await client.contestTeam.findMany({
    where: {
      contest: {
        contestId,
      },
    },
    include: {
      contestUser: {
        include: {
          user: true,
        },
      },
    },
    orderBy: [
      {
        id: "asc",
      },
      { createdAt: "asc" },
    ],
  });
};

export default {
  Query: {
    seeContestTeamList: seeContestTeamListResolvers,
  },
};
