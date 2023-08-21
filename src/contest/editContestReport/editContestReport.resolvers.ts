import client from "../../client";

const editContestReportResolvers = async (
  _,
  { id, contestId, reportTitle, reportDiscription }
) => {
  await client.contestReport.update({
    where: {
      id,
    },
    data: {
      reportTitle,
      reportDiscription,
    },
  });

  return {
    ok: true,
  };
};

export default {
  Mutation: {
    editContestReport: editContestReportResolvers,
  },
};
