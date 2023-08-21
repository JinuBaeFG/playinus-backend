import client from "../../client";

const seeContestGroupsResolvers = async (_, { contestId }) => {
  return await client.contestTierGroup.findMany({
    where: {
      contestId,
    },
  });
};

export default {
  Query: {
    seeContestGroups: seeContestGroupsResolvers,
  },
};
