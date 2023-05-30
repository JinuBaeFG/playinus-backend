export default {
  Query: {
    seeBoardComments: async (_, { id, offset }, { client }) => {
      return await client.boardComment.findMany({
        take: 5,
        skip: offset,
        where: {
          boardId: id,
        },
        include: {
          user: true,
          board: true,
        },
        orderBy: {
          createdAt: "desc",
        },
      });
    },
  },
};
