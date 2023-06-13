import client from "../../client";

const unBlockResolvers = async (_, { id }, { loggedInUser }) => {
  await client.blockUser.delete({
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
    unBlock: unBlockResolvers,
  },
};
