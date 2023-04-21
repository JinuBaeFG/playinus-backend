import client from "../client";
import { protectedResolver } from "../users/users.utils";

export default {
  Group: {
    users: ({ id }) => {
      return client.user.findMany({
        where: {
          group: {
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
          group: {
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
          group: {
            some: {
              id,
            },
          },
        },
      });
    },
    groupInfo: ({ id }) => {
      return client.groupInfo.findMany({
        where: {
          group: {
            some: {
              id,
            },
          },
        },
      });
    },
    groupTag: ({ id }) => {
      return client.groupTag.findMany({
        where: {
          group: {
            some: {
              id,
            },
          },
        },
      });
    },
    groupPresident: ({ id }, _, { loggedInUser }) => {
      return client.groupPresident.findFirst({
        where: {
          group: {
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
      const ok = await client.groupPresident.findFirst({
        where: {
          group: {
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
    isJoin: async ({ id }, _, { loggedInUser }) => {
      if (!loggedInUser) {
        return false;
      }
      const ok = await client.user.findFirst({
        where: {
          id: loggedInUser.id,
          group: {
            some: {
              id,
            },
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
    isJoining: async ({ id }, _, { loggedInUser }) => {
      if (!loggedInUser) {
        return false;
      }
      const ok = await client.groupJoinRequest.findUnique({
        where: {
          userId_groupId: {
            userId: loggedInUser.id,
            groupId: id,
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
