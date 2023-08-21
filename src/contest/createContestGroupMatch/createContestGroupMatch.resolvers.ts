import client from "../../client";

const createContestGroupMatchResolvers = async (
  _,
  { groupNo, contestId, contestGroupId }
) => {
  await client.contestMatchGroup.create({
    data: {
      groupNo,
      contest: {
        connect: {
          contestId,
        },
      },
      contestTierGroup: {
        connect: {
          id: contestGroupId,
        },
      },
    },
  });

  return {
    ok: true,
  };
};

export default {
  Mutation: {
    createContestGroupMatch: createContestGroupMatchResolvers,
  },
};
