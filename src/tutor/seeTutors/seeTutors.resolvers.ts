const seeTutorsResolvers = async (_, { offset }, { loggedInUser, client }) => {
  return await client.tutor.findMany({
    take: 5,
    skip: offset,
    where: {
      access: true,
    },
  });
};

export default {
  Query: {
    seeTutors: seeTutorsResolvers,
  },
};
