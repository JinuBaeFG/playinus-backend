import client from "../../client";

const seeContestGroupMatchHistoryResolvers = async (
  _,
  { contestMatchGroupId }
) => {
  return await client.contestGroupMatchHistory.findMany({
    where: {
      contestMatchGroupId,
    },
    include: {
      contestTeam: true,
      contestCourt: true,
    },
    orderBy: {
      contestTeamId: "asc",
    },
  });
};

export default {
  Query: {
    seeContestGroupMatchHistory: seeContestGroupMatchHistoryResolvers,
  },
};
