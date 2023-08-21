import { deCryptFunction } from "../../users/users.utils";

const seeContestJoinCheckResolvers = async (
  _,
  { contestId, userId },
  { client }
) => {
  const contestUser = await client.contestUser.findUnique({
    where: {
      contestId_userId: {
        contestId,
        userId,
      },
    },
    include: {
      user: true,
      contest: true,
      contestTeam: true,
    },
  });
  const returnValue = contestUser;
  returnValue.phoneNumber = deCryptFunction(contestUser.user.phoneNumber);

  return returnValue;
};

export default {
  Query: {
    seeContestJoinCheck: seeContestJoinCheckResolvers,
  },
};
