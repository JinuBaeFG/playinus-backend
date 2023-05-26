import client from "../client";

export default {
  Report: {
    user: ({ userId }) => {
      return client.user.findUnique({
        where: {
          id: userId,
        },
      });
    },
    photo: ({ photoId }) => {
      if (photoId !== null && photoId !== undefined) {
        return client.photo.findUnique({
          where: {
            id: photoId,
          },
        });
      }
    },
    board: ({ boardId }) => {
      if (boardId !== null && boardId !== undefined) {
        return client.board.findUnique({
          where: {
            id: boardId,
          },
        });
      }
    },
    notice: ({ noticeId }) => {
      if (noticeId !== null && noticeId !== undefined) {
        return client.notice.findUnique({
          where: {
            id: noticeId,
          },
        });
      }
    },
  },
};
