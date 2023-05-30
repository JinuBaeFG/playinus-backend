const deleteFacilityResolvers = async (_, { id }, { client }) => {
  await client.facility.delete({
    where: {
      id,
    },
  });

  return {
    ok: true,
  };
};

export default {
  Mutation: {
    deleteFacility: deleteFacilityResolvers,
  },
};
