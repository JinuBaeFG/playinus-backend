import client from "../../client";

const seeContestMatchTeamResolvers = async (_, { contestMatchGroupId }) => {
  return await client.contestTeam.findMany({
    where: {
      contestMatchGroupId,
    },
    orderBy: {
      id: "asc",
    },
  });
};

export default {
  Query: {
    seeContestMatchTeam: seeContestMatchTeamResolvers,
  },
};
