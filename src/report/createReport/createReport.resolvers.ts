import { prisma } from "@prisma/client";
import client from "../../client";

const createReportResolvers = async (
  _,
  { photoId, boardId, noticeId, reportDiscription, reportSortation },
  { loggedInUser }
) => {
  const createReport = await client.report.create({
    data: {
      user: {
        connect: {
          id: loggedInUser.id,
        },
      },
      ...(photoId !== null &&
        photoId !== undefined && {
          photo: {
            connect: {
              id: photoId,
            },
          },
        }),
      ...(boardId !== null &&
        boardId !== undefined && {
          board: {
            connect: {
              id: boardId,
            },
          },
        }),
      ...(noticeId !== null &&
        noticeId !== undefined && {
          notice: {
            connect: {
              id: noticeId,
            },
          },
        }),
      reportDiscription,
      reportSortation,
    },
  });
  if (createReport.id) {
    return {
      ok: true,
    };
  }
};

export default {
  Mutation: {
    createReport: createReportResolvers,
  },
};
