import client from "../../client";

const deleteContestUserResolvers = async (_, { ids }) => {
  ids.map(async (item) => {
    await client.contestUser.delete({
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
    deleteContestUser: deleteContestUserResolvers,
  },
};
