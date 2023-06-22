import client from "../../client";

const seeContestResolvers = async (_, { contestId }) => {
  return await client.contest.findUnique({
    where: {
      contestId,
    },
  });
};

export default {
  Query: {
    seeContest: seeContestResolvers,
  },
};
