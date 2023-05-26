import client from "../../client";

const seePrivacyResolvers = async (_, __, {}) => {
  return await client.config.findFirst({
    select: {
      privacyTerms: true,
    },
  });
};

export default {
  Query: {
    seePrivacy: seePrivacyResolvers,
  },
};
