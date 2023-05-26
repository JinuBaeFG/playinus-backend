import client from "../../client";

const seeMyBugReportResolvers = async (_, { id }, { loggedInUser }) => {
  return await client.bugReport.findUnique({
    where: {
      id,
    },
  });
};

export default {
  Query: {
    seeMyBugReport: seeMyBugReportResolvers,
  },
};
