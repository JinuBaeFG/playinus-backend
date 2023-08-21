import client from "../../client";

const seeContestGroupByCourtResolvers = async (_, { contestCourtId }) => {
  const contestMatchHistory = await client.contestGroupMatchHistory.findMany({
    where: {
      contestCourt: {
        id: contestCourtId,
      },
    },
    include: {
      contestTeam: true,
      opponentTeam: true,
      contestCourt: true,
      contestMatchGroup: true,
    },
    orderBy: [
      {
        contestTeamId: "asc",
      },
      { opponentTeamId: "asc" },
      { matchNo: "asc" },
      { matchTime: "asc" },
    ],
  });

  let result, matchCount, match, count;

  if (contestMatchHistory !== undefined && contestMatchHistory !== null) {
    matchCount = contestMatchHistory.length / 2;
  }
  match = new Array(matchCount);
  count = 0;

  contestMatchHistory.map((item) => {
    if (item.opponentTeam.id !== result && matchCount > count) {
      match[count] = item;
      count++;
    }

    if (item.contestTeam.id !== result) {
      result = item.contestTeam.id;
    }
  });

  return match;
};

export default {
  Query: {
    seeContestGroupByCourt: seeContestGroupByCourtResolvers,
  },
};
