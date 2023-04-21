const seeFeedResolver = async (_, { offset }, { loggedInUser, client }) => {
  return await client.photo.findMany({
    take: 2,
    skip: offset,
    orderBy: {
      createdAt: "desc",
    },
  });
};

export default {
  Query: {
    seeFeed: seeFeedResolver,
  },
};
