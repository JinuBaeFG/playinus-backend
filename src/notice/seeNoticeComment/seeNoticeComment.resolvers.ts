const seeNoticeCommentResolvers = async (_, { id }, { client }) => {
  return await client.noticeComment.findUnique({
    where: {
      id,
    },
    include: {
      user: true,
      notice: true,
    },
  });
};

export default {
  Query: {
    seeNoticeComment: seeNoticeCommentResolvers,
  },
};
