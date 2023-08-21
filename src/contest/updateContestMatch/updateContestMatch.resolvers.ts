import client from "../../client";

const updateContestMatchResolvers = async (_, { contestGroupId }) => {
  await client.contestTierGroup.update({
    where: {
      id: contestGroupId,
    },
    data: {
      createMatchYN: true,
    },
  });

  return {
    ok: true,
  };
};

export default {
  Mutation: {
    updateContestMatch: updateContestMatchResolvers,
  },
};
