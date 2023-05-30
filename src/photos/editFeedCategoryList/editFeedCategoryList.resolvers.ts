const editFeedCategoryResolvers = async (
  _,
  { id, name, sortKey },
  { client }
) => {
  try {
    await client.feedCategoryList.update({
      data: {
        name,
        sortKey,
      },
      where: {
        id,
      },
    });

    return {
      ok: true,
    };
  } catch (e) {
    return {
      ok: false,
      error: e,
    };
  }
};

export default {
  Mutation: {
    editFeedCategory: editFeedCategoryResolvers,
  },
};
