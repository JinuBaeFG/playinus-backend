const seeConfigResolvers = async (_, __, { client }) => {
  const config = await client.config.findFirst({});

  if (config) {
    return config;
  } else {
    return await client.config.create({
      data: {
        privacyTerms: "",
        gpsTerms: "",
        useTerms: "",
        businessInfo: "",
      },
    });
  }
};

export default {
  Query: {
    seeConfig: seeConfigResolvers,
  },
};
