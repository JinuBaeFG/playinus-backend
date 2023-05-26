import client from "../../client";

const seeUseTermResolvers = async (_, __, {}) => {
  return await client.config.findFirst({
    select: {
      useTerms: true,
    },
  });
};

export default {
  Query: {
    seeUseTerm: seeUseTermResolvers,
  },
};
