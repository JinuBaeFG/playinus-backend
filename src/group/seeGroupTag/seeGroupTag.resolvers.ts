export default {
  Query: {
    seeGroupTag: async (_, { offset }, { client }) => {
      return await client.groupTag.findMany({
        orderBy: {
          id: "desc",
        },
      });
    },
  },
};
