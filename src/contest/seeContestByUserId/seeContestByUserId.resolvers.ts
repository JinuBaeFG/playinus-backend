import client from "../../client";

const seeContestByUserIdResolvers = async (_, { userId }) => {
  return await client.contest.findMany({
    where: {
      contestUser: {
        some: {
          user: {
            id: userId,
          },
        },
      },
    },
    include: {
      contestUser: true,
    },
  });
};

export default {
  Query: {
    seeContestByUserId: seeContestByUserIdResolvers,
  },
};
