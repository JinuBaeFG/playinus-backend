export default {
  Query: {
    seeNoticeReComments: async (_, { id, offset }, { client }) => {
      return await client.noticeReComment.findMany({
        take: 5,
        skip: offset,
        where: {
          noticeCommentId: id,
        },
        include: {
          user: true,
          noticeComment: true,
        },
        orderBy: {
          createdAt: "desc",
        },
      });
    },
  },
};
