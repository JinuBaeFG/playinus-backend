const seeAdminFaqsResolvers = async (_, { offset }, { client }) => {
  return await client.adminFaq.findMany({
    orderBy: {
      createdAt: "desc",
    },
  });
};

export default {
  Query: {
    seeAdminFaqs: seeAdminFaqsResolvers,
  },
};
