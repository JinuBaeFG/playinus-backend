const seeBannerResolvers = async (_, { id }, { client }) => {
  return await client.banner.findUnique({
    where: {
      id,
    },
  });
};

export default {
  Query: {
    seeEditBanner: seeBannerResolvers,
  },
};
