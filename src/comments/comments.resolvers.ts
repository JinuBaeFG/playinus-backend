import client from "../client";

export default {
  Comment: {
    isMine: ({ userId }, _, { loggedInUser }) => {
      if (!loggedInUser) {
        return false;
      }
      return userId === loggedInUser.id;
    },
    reComments: async ({ id }) => {
      return await client.reComment.findMany({
        where: {
          commentId: id,
        },
        include: {
          user: true,
        },
      });
    },
    reCommentCount: async ({ id }) => {
      return await client.reComment.count({
        where: {
          commentId: id,
        },
      });
    },
  },
};
