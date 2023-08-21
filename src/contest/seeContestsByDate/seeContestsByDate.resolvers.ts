import client from "../../client";

const seeContestsByDateResolvers = async (_, { date, offset }) => {
  return await client.contest.findMany({
    take: 7,
    skip: offset,
    where: {
      contestStartDate: {
        contains: date,
      },
    },
    orderBy: [{ contestStartDate: "asc" }],
  });
};

export default {
  Query: {
    seeContestsByDate: seeContestsByDateResolvers,
  },
};
