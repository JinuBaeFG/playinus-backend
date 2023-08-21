import client from "../../client";

const editContestUserResolvers = async (
  _,
  {
    id,
    contestId,
    teamName,
    userAge,
    userGender,
    userTier,
    contestSports,
    contestSportsType,
  }
) => {
  await client.contestUser.update({
    where: {
      id,
    },
    data: {
      userAge,
      userGender,
      userTier,
      contestSports,
      contestSportsType,
      ...(teamName !== undefined &&
        teamName !== null && {
          contestTeam: {
            connectOrCreate: {
              where: {
                teamName_contestId: {
                  contestId,
                  teamName,
                },
              },
              create: { contestId, teamName },
            },
          },
        }),
    },
  });
  return {
    ok: true,
  };
};

export default {
  Mutation: {
    editContestUser: editContestUserResolvers,
  },
};
