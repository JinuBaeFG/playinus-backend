const seeCommentResolvers = async (_, { id }, { client }) => {
  return await client.comment.findUnique({
    where: {
      id,
    },
    include: {
      user: true,
      photo: true,
    },
  });
};

export default {
  Query: {
    seeComment: seeCommentResolvers,
  },
};
