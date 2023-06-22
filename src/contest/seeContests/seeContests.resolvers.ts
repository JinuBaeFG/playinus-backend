import client from "../../client";

const seeContestsResolvers = async (_, __, ___) => {
  return await client.contest.findMany({});
};

export default {
  Query: {
    seeContests: seeContestsResolvers,
  },
};
