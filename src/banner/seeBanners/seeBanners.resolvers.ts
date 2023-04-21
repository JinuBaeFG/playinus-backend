const seeBannersResolvers = async (_, { offset }, { client }) => {
  return await client.banner.findMany({
    orderBy: {
      createdAt: "desc",
    },
  });
};

export default {
  Query: {
    seeBanners: seeBannersResolvers,
  },
};
