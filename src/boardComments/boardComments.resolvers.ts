import client from "../client";

export default {
  BoardComment: {
    isMine: ({ userId }, _, { loggedInUser }) => {
      if (!loggedInUser) {
        return false;
      }
      return userId === loggedInUser.id;
    },
    boardReComments: async ({ id }) => {
      return await client.boardReComment.findMany({
        where: {
          boardCommentId: id,
        },
        include: {
          user: true,
        },
      });
    },
    boardReCommentCount: async ({ id }) => {
      return await client.boardReComment.count({
        where: {
          boardCommentId: id,
        },
      });
    },
  },
};
