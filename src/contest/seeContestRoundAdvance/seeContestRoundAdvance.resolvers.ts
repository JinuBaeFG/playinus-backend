import client from "../../client";

const seeContestRoundAdvanceResolvers = async (
  _,
  { contestGroupId, roundAdvance }
) => {
  const matchGroup = await client.contestMatchGroup.findMany({
    where: {
      contestTierGroup: {
        id: contestGroupId,
      },
    },
    include: {
      contest: true,
      contestTeam: true,
      contestGroupMatchResult: {
        take: roundAdvance,
        include: {
          contestTeam: {
            include: {
              contestUser: {
                include: {
                  user: true,
                },
              },
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
      },
    },
  });

  return matchGroup;
};

export default {
  Query: {
    seeContestRoundAdvance: seeContestRoundAdvanceResolvers,
  },
};
