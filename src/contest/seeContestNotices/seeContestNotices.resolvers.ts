import client from "../../client";

const seeContestNoticesResolvers = async (_, { id, contestId }) => {
  return await client.contestNotice.findMany({
    where: {
      id,
      contest: {
        contestId,
      },
    },
  });
};

export default {
  Query: {
    seeContestNotices: seeContestNoticesResolvers,
  },
};
