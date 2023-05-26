import client from "../client";

export default {
  Tutor: {
    group: ({ id }) => {
      return client.group.findMany({
        where: {
          tutor: {
            some: {
              id,
            },
          },
        },
      });
    },
    userCount: ({ id }) => {
      return client.user.count({
        where: {
          tutor: {
            some: {
              id,
            },
          },
        },
      });
    },
    user: ({ id }) => {
      return client.user.findFirst({
        where: {
          tutor: {
            some: {
              id,
            },
          },
        },
      });
    },
    tutorInfo: ({ id }) => {
      return client.tutorInfo.findMany({
        where: {
          tutor: {
            some: {
              id,
            },
          },
        },
      });
    },
    tutorTag: ({ id }) => {
      return client.tutorTag.findMany({
        where: {
          tutor: {
            some: {
              id,
            },
          },
        },
      });
    },
    facility: ({ id }) => {
      return client.facility.findMany({
        where: {
          tutor: {
            some: {
              id,
            },
          },
        },
      });
    },
    tutorInquiry: ({ id }) => {
      return client.tutor.findMany({
        where: {
          tutorInquiry: {
            some: {
              id,
            },
          },
        },
      });
    },
    tutorSportsEvent: ({ id }) => {
      return client.tutorSportsEvent.findMany({
        where: {
          tutor: {
            id,
          },
        },
      });
    },
    tutorImage: ({ id }) => {
      return client.tutorImage.findFirst({
        where: {
          tutor: {
            some: {
              id,
            },
          },
        },
      });
    },
    isJoin: ({ id }, _, { loggedInUser }) => {
      if (!loggedInUser) {
        return false;
      }
      const ok = client.user.findFirst({
        where: {
          tutor: {
            some: {
              id,
            },
          },
          id: loggedInUser.id,
        },
        select: {
          id: true,
        },
      });

      if (ok) {
        return true;
      } else {
        return false;
      }
    },
    tutorPresident: ({ id }, _, { loggedInUser }) => {
      return client.tutorPresident.findFirst({
        where: {
          tutor: {
            some: {
              id,
            },
          },
        },
        include: {
          user: true,
        },
      });
    },
    isPresident: async ({ id }, _, { loggedInUser }) => {
      if (!loggedInUser) {
        return false;
      }
      const ok = await client.tutorPresident.findFirst({
        where: {
          tutor: {
            some: {
              id,
            },
          },
          userId: loggedInUser.id,
        },
        select: {
          userId: true,
        },
      });

      if (ok) {
        return true;
      } else {
        return false;
      }
    },
  },
};
