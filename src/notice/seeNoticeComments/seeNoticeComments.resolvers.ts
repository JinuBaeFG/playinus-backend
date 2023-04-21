export default {
  Query: {
    seeNoticeComments: async (_, { id, offset }, { client }) => {
      return await client.noticeComment.findMany({
        take: 5,
        skip: offset,
        where: {
          noticeId: id,
        },
        include: {
          user: true,
          notice: true,
        },
        orderBy: {
          createdAt: "desc",
        },
      });
    },
  },
};
