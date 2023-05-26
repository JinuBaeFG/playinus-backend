import client from "../../client";

const deleteReportResolvers = async (_, { id }, { loggedInUser }) => {
  await client.report.delete({
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
    deleteReport: deleteReportResolvers,
  },
};
