import client from "../client";
import { protectedResolver } from "../users/users.utils";

export default {
  Board: {
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
      return client.boardLike.count({
        where: {
          boardId: id,
        },
      });
    },
    boardCommentCount: async ({ id }) => {
      return client.boardComment.count({
        where: {
          boardId: id,
        },
      });
    },
    boardComments: ({ id }) => {
      return client.boardComment.findMany({
        where: { boardId: id },
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
      const ok = await client.boardLike.findUnique({
        where: {
          boardId_userId: {
            boardId: id,
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
