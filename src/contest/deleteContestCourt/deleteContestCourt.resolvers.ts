import client from "../../client";

const deleteContestCourtResolvers = (_, { ids }) => {
  ids.map(async (item) => {
    await client.contestCourt.delete({
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
    deleteContestCourt: deleteContestCourtResolvers,
  },
};
