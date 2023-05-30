const deleteAdminFaqResolvers = async (_, { id }, { client }) => {
  await client.adminFaq.delete({
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
    deleteAdminFaq: deleteAdminFaqResolvers,
  },
};
