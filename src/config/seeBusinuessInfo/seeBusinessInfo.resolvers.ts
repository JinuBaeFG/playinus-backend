import client from "../../client";

const seeBusinessInfoResolvers = async (_, __, {}) => {
  return await client.config.findFirst({
    select: {
      businessInfo: true,
    },
  });
};

export default {
  Query: {
    seeBusinessInfo: seeBusinessInfoResolvers,
  },
};
