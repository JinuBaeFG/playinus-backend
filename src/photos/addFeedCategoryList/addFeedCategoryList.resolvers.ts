const addFeedCategoryResolvers = async (_, { name, sortKey }, { client }) => {
  const newFeedCategory = await client.feedCategoryList.create({
    data: {
      name,
      sortKey,
    },
  });

  return {
    ok: true,
    id: newFeedCategory.id,
  };
};

export default {
  Mutation: {
    addFeedCategory: addFeedCategoryResolvers,
  },
};
