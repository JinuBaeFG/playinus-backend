const seeAdminNoticeResolvers = async (_, { id }, { client }) => {
  return client.adminNotice.findUnique({
    where: {
      id,
    },
  });
};

export default {
  Query: {
    seeAdminNotice: seeAdminNoticeResolvers,
  },
};
