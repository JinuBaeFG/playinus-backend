import client from "../../client";
import { deCryptFunction } from "../../users/users.utils";

const seeUserlistResolvers = async (_, { contestId }) => {
  const contestUser = await client.contestUser.findMany({
    where: {
      contest: {
        contestId,
      },
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
    seeUserList: seeUserlistResolvers,
  },
};
