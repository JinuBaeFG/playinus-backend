import client from "../client";

export default {
  BugReport: {
    user: ({ userId }) => {
      return client.user.findUnique({
        where: {
          id: userId,
        },
      });
    },
  },
};
