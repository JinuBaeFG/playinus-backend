import client from "../../client";

const seeContestTierGroupResolvers = async (
  _,
  { contestId, sportsSort, groupSort }
) => {
  return await client.contestTierGroup.findMany({
    where: {
      contestId,
      ...(sportsSort !== "전체" && {
        groupName: {
          contains: sportsSort,
        },
      }),
      ...(groupSort !== "전체" && {
        groupName: {
          contains: groupSort,
        },
      }),
    },
  });
};

export default {
  Query: {
    seeContestTierGroup: seeContestTierGroupResolvers,
  },
};
