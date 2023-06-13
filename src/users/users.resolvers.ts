import client from "../client";

export default {
  User: {
    isMe: ({ id }, _, { loggedInUser }) => {
      if (!loggedInUser) {
        return false;
      }
      return id === loggedInUser.id;
    },
    photos: ({ id }) => {
      return client.user
        .findUnique({
          where: {
            id,
          },
        })
        .photos();
    },
    board: ({ id }) => {
      return client.user
        .findUnique({
          where: {
            id,
          },
        })
        .board();
    },
    notice: ({ id }) => {
      return client.user
        .findUnique({
          where: {
            id,
          },
        })
        .notice();
    },
    groupCount: ({ id }) => {
      return client.group.count({
        where: {
          users: {
            some: {
              id,
            },
          },
        },
      });
    },
    tutorCount: ({ id }) => {
      return client.tutor.count({
        where: {
          user: {
            some: {
              id,
            },
          },
        },
      });
    },
    blockedBy: ({ id }) => {
      return client.blockUser.findMany({
        where: {
          userId: id,
        },
        include: {
          user: true,
          blockedBy: true,
        },
      });
    },
  },
};
