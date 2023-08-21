import client from "../../client";

const seeContestReportResolvers = async (_, { id }) => {
  return await client.contestReport.findUnique({
    where: {
      id,
    },
  });
};

export default {
  Query: {
    seeContestReport: seeContestReportResolvers,
  },
};
