import client from "../client";

export default {
  Contest: {
    contestUser: ({ id }) => {
      return client.contest
        .findUnique({
          where: {
            id,
          },
        })
        .contestUser();
    },
    contestNotice: ({ id }) => {
      return client.contest
        .findUnique({
          where: {
            id,
          },
        })
        .contestNotice();
    },
    contestReport: ({ id }) => {
      return client.contest
        .findUnique({
          where: {
            id,
          },
        })
        .contestReport();
    },
  },
};
