import client from "../../client";

const createContestCourtResolvers = async (_, { courtName, contestId }) => {
  await client.contestCourt.create({
    data: {
      courtName,
      contest: {
        connect: {
          contestId,
        },
      },
    },
  });
  return {
    ok: true,
  };
};

export default {
  Mutation: {
    createContestCourt: createContestCourtResolvers,
  },
};
