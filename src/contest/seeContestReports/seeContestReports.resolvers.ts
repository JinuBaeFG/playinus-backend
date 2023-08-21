import client from "../../client";

const seeContestReportsResolvers = async (_, { id, contestId }) => {
  return await client.contestReport.findMany({
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
    seeContestReports: seeContestReportsResolvers,
  },
};
