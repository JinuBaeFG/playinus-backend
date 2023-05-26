const seeMainBannersResolvers = async (
  _,
  { offset, sortation },
  { client }
) => {
  return await client.banner.findMany({
    take: offset,
    where: {
      sortation,
    },
    orderBy: {
      createdAt: "desc",
    },
  });
};

export default {
  Query: {
    seeMainBanners: seeMainBannersResolvers,
  },
};
