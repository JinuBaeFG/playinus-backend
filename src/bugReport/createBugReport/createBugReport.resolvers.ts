import client from "../../client";
import { uploadToAWS } from "../../shared/shared.util";

const createBugReportResolvers = async (
  _,
  { reportTitle, reportDiscription, reportImage },
  { loggedInUser }
) => {
  let imagePaths;
  if (reportImage !== undefined && reportImage !== null) {
    imagePaths = uploadToAWS(reportImage, loggedInUser.id, "BugReport");
  }

  const bugReport = await client.bugReport.create({
    data: {
      reportTitle,
      reportDiscription,
      user: {
        connect: {
          id: loggedInUser.id,
        },
      },
      ...(reportImage !== undefined &&
        reportImage !== null && {
          bugReportImage: {
            connectOrCreate: imagePaths,
          },
        }),
    },
  });

  if (bugReport) {
    return {
      ok: true,
    };
  }
};

export default {
  Mutation: {
    createBugReport: createBugReportResolvers,
  },
};
