const seeFacilitiesResolvers = async (_, { offset }, { client }) => {
  return await client.facility.findMany({
    orderBy: {
      createdAt: "desc",
    },
  });
};

export default {
  Query: {
    seeFacilities: seeFacilitiesResolvers,
  },
};
