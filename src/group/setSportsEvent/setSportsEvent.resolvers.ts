const setSportsEventResolver = async (_, { id }, { client }) => {
  return await client.group.findUnique({
    where: {
      id,
    },
    select: {
      sportsEvent: true,
    },
  });
};

export default {
  Query: {
    setSportsEvent: setSportsEventResolver,
  },
};
