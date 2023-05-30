import client from "../client";

export default {
  NoticeComment: {
    isMine: ({ userId }, _, { loggedInUser }) => {
      if (!loggedInUser) {
        return false;
      }
      return userId === loggedInUser.id;
    },
    noticeReComments: async ({ id }) => {
      return await client.noticeReComment.findMany({
        where: {
          noticeCommentId: id,
        },
        include: {
          user: true,
        },
      });
    },
    noticeReCommentCount: async ({ id }) => {
      return await client.noticeReComment.count({
        where: {
          noticeCommentId: id,
        },
      });
    },
  },
};
