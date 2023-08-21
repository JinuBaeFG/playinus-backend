import client from "../../client";

const seeContestGroupMatchResultResolvers = async (
  _,
  { contestMatchGroupId }
) => {
  return await client.contestGroupMatchResult.findMany({
    where: {
      contestMatchGroupId,
    },
    include: {
      contest: true,
      contestTeam: {
        include: {
          contestUser: true,
        },
      },
    },
    orderBy: [
      {
        totalWin: "desc",
      },
      { totalScore: "desc" },
      { totalWinScore: "desc" },
    ],
  });
};

export default {
  Query: {
    seeContestGroupMatchResult: seeContestGroupMatchResultResolvers,
  },
};
