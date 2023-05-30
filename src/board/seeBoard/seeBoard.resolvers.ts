const seeBoardResolvers = async (_, { id }, { client }) => {
  await client.board.update({
    where: {
      id,
    },
    data: {
      hits: {
        increment: 1,
      },
    },
  });
  return await client.board.findUnique({
    where: {
      id,
    },
  });
};

export default {
  Query: {
    seeBoard: seeBoardResolvers,
  },
};
