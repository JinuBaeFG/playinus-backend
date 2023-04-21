export default {
  Query: {
    seeBoardReComments: async (_, { id, offset }, { client }) => {
      return await client.boardReComment.findMany({
        take: 5,
        skip: offset,
        where: {
          boardCommentId: id,
        },
        include: {
          user: true,
          boardComment: true,
        },
        orderBy: {
          createdAt: "desc",
        },
      });
    },
  },
};
