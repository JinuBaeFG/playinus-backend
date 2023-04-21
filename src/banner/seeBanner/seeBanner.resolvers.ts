const seeBannerResolvers = async (_, { id }, { client }) => {
  return client.banner.findUnique({
    where: {
      id,
    },
  });
};

export default {
  Query: {
    seeBanner: seeBannerResolvers,
  },
};
