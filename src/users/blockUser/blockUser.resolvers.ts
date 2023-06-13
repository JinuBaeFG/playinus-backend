import client from "../../client";

const blockUserResolvers = async (_, { id }, { loggedInUser }) => {
  const block = await client.blockUser.create({
    data: {
      user: {
        connect: {
          id: loggedInUser.id,
        },
      },
      blockedBy: {
        connect: {
          id,
        },
      },
    },
  });
  if (block) {
    return {
      ok: true,
    };
  } else {
    return {
      ok: false,
    };
  }
};

export default {
  Mutation: {
    blockUser: blockUserResolvers,
  },
};
