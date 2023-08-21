import client from "../../client";

const checkJoinContestResolvers = async (_, { contestId, userId }) => {
  return await client.contestUser.findUnique({
    where: {
      contestId_userId: {
        contestId,
        userId,
      },
    },
  });
};

export default {
  Query: {
    checkJoinContest: checkJoinContestResolvers,
  },
};
