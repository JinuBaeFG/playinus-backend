import client from "../../client";

const seeContestMatchGroupResolvers = async (_, { contestGroupId }) => {
  return await client.contestMatchGroup.findMany({
    where: {
      contestTierGroupId: contestGroupId,
    },
    include: {
      contestTierGroup: true,
    },
    orderBy: {
      groupNo: "asc",
    },
  });
};

export default {
  Query: {
    seeContestMatchGroup: seeContestMatchGroupResolvers,
  },
};
