import client from "../../client";

const createContestGroupResolvers = async (_, { groupName, contestId }) => {
  await client.contestTierGroup.create({
    data: {
      groupName,
      ...(contestId !== undefined &&
        contestId !== null && {
          contest: {
            connect: {
              contestId: contestId,
            },
          },
        }),
    },
  });

  return {
    ok: true,
  };
};

export default {
  Mutation: {
    createContestGroup: createContestGroupResolvers,
  },
};
