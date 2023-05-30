const seeAdminNoticesResolvers = async (_, { offset }, { client }) => {
  return await client.adminNotice.findMany({
    orderBy: {
      createdAt: "desc",
    },
  });
};

export default {
  Query: {
    seeAdminNotices: seeAdminNoticesResolvers,
  },
};
