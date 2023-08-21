import client from "../../client";

const deleteContestReportResolvers = async (_, { id }) => {
  await client.contestReport.delete({
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
    deleteContestReport: deleteContestReportResolvers,
  },
};
