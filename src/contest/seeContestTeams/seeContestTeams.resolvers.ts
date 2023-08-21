import client from "../../client";

const seeContestTeamsResolvers = async (_, { contestId }) => {
  return await client.contestTeam.findMany({
    where: {
      contest: {
        contestId,
      },
      contestMatchGroupId: null,
    },
    orderBy: {
      id: "asc",
    },
  });
};

export default {
  Query: {
    seeContestTeams: seeContestTeamsResolvers,
  },
};
