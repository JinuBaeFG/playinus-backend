const seeBoardCommentResolvers = async (_, { id }, { client }) => {
  return await client.boardComment.findUnique({
    where: {
      id,
    },
    include: {
      user: true,
      board: true,
    },
  });
};

export default {
  Query: {
    seeBoardComment: seeBoardCommentResolvers,
  },
};
