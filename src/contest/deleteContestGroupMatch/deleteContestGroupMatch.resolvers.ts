import client from "../../client";

const deleteContestGroupMatchResolvers = async (_, { id }) => {
  await client.contestMatchGroup.delete({
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
    deleteContestGroupMatch: deleteContestGroupMatchResolvers,
  },
};
