import client from "../../client";

const seeContestCourtResolvers = async (_, { contestId }) => {
  return await client.contestCourt.findMany({
    where: {
      contestId,
    },
    orderBy: {
      courtName: "asc",
    },
  });
};

export default {
  Query: {
    seeContestCourt: seeContestCourtResolvers,
  },
};
