import client from "../../client";

const seeGPSTermResolvers = async (_, __, {}) => {
  return await client.config.findFirst({
    select: {
      gpsTerms: true,
    },
  });
};

export default {
  Query: {
    seeGPSTerm: seeGPSTermResolvers,
  },
};
