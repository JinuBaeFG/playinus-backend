import client from "../../client";

const seeContestNoticeResolvers = async (_, { id }) => {
  return await client.contestNotice.findUnique({
    where: {
      id,
    },
  });
};

export default {
  Query: {
    seeContestNotice: seeContestNoticeResolvers,
  },
};
