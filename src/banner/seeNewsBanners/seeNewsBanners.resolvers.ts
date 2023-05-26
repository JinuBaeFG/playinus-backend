import client from "../../client";

const seeNewsBannerResolver = async (_, { offset, sortation }) => {
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
    seeNewsBanner: seeNewsBannerResolver,
  },
};
