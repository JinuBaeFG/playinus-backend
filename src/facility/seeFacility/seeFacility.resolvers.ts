const seeFacilityResolvers = async (_, { id }, { client }) => {
  return client.facility.findUnique({
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
