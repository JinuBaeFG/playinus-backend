import client from "../../client";

const getContestMatchResolvers = async (_, { contestId }) => {
  return await client.contest.findUnique({
    where: {
      contestId,
    },
    select: {
      contestSportsDetail: true,
    },
  });
};

export default {
  Query: {
    getContestMatch: getContestMatchResolvers,
  },
};
