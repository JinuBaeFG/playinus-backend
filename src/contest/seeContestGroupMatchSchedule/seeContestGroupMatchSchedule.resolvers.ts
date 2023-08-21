import client from "../../client";

const seeContestGroupMatchScheduleResolvers = async (
  _,
  { contestMatchGroupId }
) => {
  const contestTeamList = await client.contestTeam.findMany({
    where: {
      contestMatchGroupId,
    },
  });
  const contestMatchHistory = await client.contestGroupMatchHistory.findMany({
    where: {
      contestMatchGroupId,
    },
    include: {
      contestTeam: true,
      opponentTeam: true,
      contestCourt: true,
    },
    orderBy: [
      {
        contestTeamId: "asc",
      },
      { opponentTeamId: "asc" },
    ],
  });

  let result, matchCount, match, count;

  if (contestTeamList !== undefined && contestTeamList !== null) {
    matchCount = (contestTeamList.length * (contestTeamList.length - 1)) / 2;
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
    seeContestGroupMatchSchedule: seeContestGroupMatchScheduleResolvers,
  },
};
