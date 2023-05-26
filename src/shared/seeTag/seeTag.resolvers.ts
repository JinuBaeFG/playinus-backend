export default {
  Query: {
    seeTag: async (_, { sortation }, { client }) => {
      if (sortation !== undefined && sortation !== null) {
        return await client.tag.findMany({
          where: {
            sortation,
          },
        });
      } else {
        return await client.tag.findMany({});
      }
    },
  },
};
