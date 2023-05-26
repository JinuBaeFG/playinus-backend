import client from "../../client";

const deleteBugReportResolvers = async (_, { id }, { loggedInUser }) => {
  await client.bugReport.delete({
    where: {
      id,
    },
  });

  return {
    ok: true,
  };
};

export default {
  Mutation: {
    deleteBugReport: deleteBugReportResolvers,
  },
};
