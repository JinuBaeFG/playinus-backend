import client from "../../client";

const createContestReportResolvers = async (
  _,
  { contestId, reportType, reportTitle, reportDiscription },
  { loggedInUser }
) => {
  await client.contestReport.create({
    data: {
      user: {
        connect: {
          id: loggedInUser.id,
        },
      },
      contest: {
        connect: {
          contestId,
        },
      },
      reportType,
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
    createContestReport: createContestReportResolvers,
  },
};
