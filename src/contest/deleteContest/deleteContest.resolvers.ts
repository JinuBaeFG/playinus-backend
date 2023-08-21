import client from "../../client";

const deleteContestResolvers = async (_, { ids }) => {
  ids.map(async (item) => {
    await client.contest.delete({
      where: {
        contestId: item.contestId,
      },
    });
  });

  return {
    ok: true,
  };
};

export default {
  Mutation: {
    deleteContest: deleteContestResolvers,
  },
};
