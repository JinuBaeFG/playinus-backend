import client from "../../client";

const deleteContestGroupResolvers = async (_, { ids }) => {
  ids.map(async (item) => {
    await client.contestTierGroup.delete({
      where: {
        id: item.id,
      },
    });
  });

  return {
    ok: true,
  };
};

export default {
  Mutation: {
    deleteContestGroup: deleteContestGroupResolvers,
  },
};
