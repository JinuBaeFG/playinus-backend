import client from "../../client";
import { deCryptFunction } from "../../users/users.utils";

const seeEditContestUserResolvers = async (_, { id }) => {
  const contestUser = await client.contestUser.findUnique({
    where: {
      id,
    },
    include: {
      user: true,
      contestTeam: true,
      contest: true,
    },
  });

  return contestUser;
};

export default {
  Query: {
    seeEditContestUser: seeEditContestUserResolvers,
  },
};
