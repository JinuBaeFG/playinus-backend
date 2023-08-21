import client from "../../client";

const createContestUserResolvers = async (
  _,
  {
    teamName,
    userAge,
    userGender,
    userTier,
    contestSports,
    contestSportsType,
    contestId,
    userId,
  }
) => {
  const date = Date.now();
  const contestPaymentId = "PI" + date;
  const contestUser = await client.contestUser.create({
    data: {
      userAge: parseInt(userAge),
      userGender,
      userTier,
      contestSports,
      contestSportsType,
      contestPaymentId,
      ...(contestId !== undefined &&
        contestId !== null && {
          contest: {
            connect: {
              contestId,
            },
          },
        }),
      ...(userId !== undefined &&
        userId !== null && {
          user: {
            connect: {
              id: userId,
            },
          },
        }),
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
              create: {
                contestId,
                teamName,
              },
            },
          },
        }),
    },
  });

  await client.contestTeam.update({
    where: {
      teamName_contestId: {
        contestId,
        teamName,
      },
    },
    data: {
      ...(contestId !== undefined &&
        contestId !== null && {
          contest: {
            connect: {
              contestId,
            },
          },
        }),
    },
  });

  return {
    ok: true,
    id: contestUser.id,
  };
};

export default {
  Mutation: {
    createContestUser: createContestUserResolvers,
  },
};
