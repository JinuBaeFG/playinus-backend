const deleteBannerResolvers = async (_, { id }, { client }) => {
  await client.banner.delete({
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
    deleteBanner: deleteBannerResolvers,
  },
};
