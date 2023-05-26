export default {
  Query: {
    seeFacilityTag: async (_, { offset }, { client }) => {
      return await client.facilityTag.findMany({});
    },
  },
};
