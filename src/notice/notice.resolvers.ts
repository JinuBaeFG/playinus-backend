import client from "../client";
import { protectedResolver } from "../users/users.utils";

export default {
  Notice: {
    user: async ({ userId }) => {
      return await client.user.findUnique({
        where: {
          id: userId,
        },
      });
    },
    group: async ({ groupId }) => {
      if (groupId === null || groupId === undefined) {
        return null;
      }
      return await client.group.findUnique({
        where: {
          id: groupId,
        },
      });
    },
    tutor: async ({ tutorId }) => {
      if (tutorId === null || tutorId === undefined) {
        return null;
      }
      return await client.tutor.findUnique({
        where: {
          id: tutorId,
        },
      });
    },
    likes: ({ id }) => {
      return client.noticeLike.count({
        where: {
          noticeId: id,
        },
      });
    },
    noticeCommentCount: async ({ id }) => {
      return client.noticeComment.count({
        where: {
          noticeId: id,
        },
      });
    },
    noticeComments: ({ id }) => {
      return client.noticeComment.findMany({
        where: { noticeId: id },
        include: { user: true },
      });
    },
    isMine: protectedResolver(async ({ userId }, _, { loggedInUser }) => {
      if (!loggedInUser) {
        return false;
      }
      return userId === loggedInUser.id;
    }),
    isLiked: async ({ id }, _, { loggedInUser }) => {
      if (!loggedInUser) {
        return false;
      }
      const ok = await client.noticeLike.findUnique({
        where: {
          noticeId_userId: {
            noticeId: id,
            userId: loggedInUser.id,
          },
        },
        select: {
          id: true,
        },
      });
      if (ok) {
        return true;
      }
      return false;
    },
  },
};
