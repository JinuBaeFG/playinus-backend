export default {
  Query: {
    seeReComments: async (_, { id, offset }, { client }) => {
      return await client.reComment.findMany({
        take: 5,
        skip: offset,
        where: {
          commentId: id,
        },
        include: {
          user: true,
          comment: true,
        },
        orderBy: {
          createdAt: "desc",
        },
      });
    },
  },
};
