const seeFacilityResolvers = async (_, { id }, { client }) => {
  return await client.facility.findUnique({
    where: {
      id,
    },
  });
};

export default {
  Query: {
    seeFacility: seeFacilityResolvers,
  },
};
