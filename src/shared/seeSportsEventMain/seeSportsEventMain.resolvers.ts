export default {
  Query: {
    seeSportsEventMain: async (_, { offset }, { client }) => {
      return await client.sportsEvent.findMany({
        take: 10,
        skip: offset,
        select: {
          id: true,
          name: true,
          imagePath: true,
        },
      });
    },
  },
};
