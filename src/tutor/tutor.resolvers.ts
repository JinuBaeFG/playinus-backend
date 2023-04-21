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
    isTutor: ({ id }, _, { loggedInUser }) => {
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
  },
};
