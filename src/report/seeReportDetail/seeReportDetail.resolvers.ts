import client from "../../client";

const seeReportDetailResolvers = (_, { id }, { loggedInUser }) => {
  return client.report.findUnique({
    where: {
      id,
    },
  });
};

export default {
  Query: {
    seeReportDetail: seeReportDetailResolvers,
  },
};
