const deleteAdminNoticeResolvers = async (_, { id }, { client }) => {
  await client.adminNotice.delete({
    where: {
      id,
    },
  });

  return {
    ok: true,
  };
};

export default {
  Mutation: {
    deleteAdminNotice: deleteAdminNoticeResolvers,
  },
};
