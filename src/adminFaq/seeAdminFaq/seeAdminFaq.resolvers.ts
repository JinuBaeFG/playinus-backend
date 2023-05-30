const seeAdminFaqResolvers = async (_, { id }, { client }) => {
  return client.adminFaq.findUnique({
    where: {
      id,
    },
  });
};

export default {
  Query: {
    seeAdminFaq: seeAdminFaqResolvers,
  },
};
