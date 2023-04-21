const seeConfigResolvers = async (_, __, { client }) => {
  return await client.config.findFirst({});
};

export default {
  Query: {
    seeConfig: seeConfigResolvers,
  },
};
