export default {
  Query: {
    seeSportsEvent: async (_, { offset }, { client }) => {
      return await client.sportsEvent.findMany({
        select: {
          id: true,
          name: true,
          imagePath: true,
        },
      });
    },
  },
};
