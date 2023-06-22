import client from "../../client";

const deleteContestResolvers = async (_, { id }) => {
  await client.contest.delete({
    where: {
      id,
    },
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
