import client from "../../client";

const createContestGroupMatchHistoryResolvers = async (
  _,
  { contestId, contestTeam, contestMatchGroupId }
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
  });

  const contestMatchResult = await client.contestGroupMatchResult.findMany({
    where: {
      contestMatchGroupId,
    },
  });

  if (
    contestTeamList.length < 1 &&
    contestMatchHistory.length < 1 &&
    contestMatchResult.length < 1
  ) {
    contestTeam.map(async (team) => {
      contestTeam.map(async (opponentTeam) => {
        if (team.id !== opponentTeam.id) {
          await client.contestGroupMatchHistory.create({
            data: {
              contestId,
              contestTeamId: team.id,
              opponentTeamId: opponentTeam.id,
              contestMatchGroupId: contestMatchGroupId,
            },
          });
        }
      });
      await client.contestMatchGroup.update({
        where: {
          id: contestMatchGroupId,
        },
        data: {
          contestTeam: {
            connect: {
              id: team.id,
            },
          },
        },
      });

      await client.contestGroupMatchResult.create({
        data: {
          contest: {
            connect: {
              contestId,
            },
          },
          contestMatchGroup: {
            connect: {
              id: contestMatchGroupId,
            },
          },
          contestTeam: {
            connect: {
              id: team.id,
            },
          },
        },
      });
    });
  } else {
    contestMatchHistory.map(async (item) => {
      await client.contestGroupMatchHistory.delete({
        where: {
          id: item.id,
        },
      });
    });

    contestMatchResult.map(async (item) => {
      await client.contestGroupMatchResult.delete({
        where: {
          id: item.id,
        },
      });
    });

    contestTeamList.map(async (item) => {
      await contestTeam.push({ id: item.id });
    });

    setTimeout(() => {
      contestTeam.map(async (team) => {
        contestTeam.map(async (opponentTeam) => {
          if (team.id !== opponentTeam.id) {
            await client.contestGroupMatchHistory.create({
              data: {
                contestId,
                contestTeamId: team.id,
                opponentTeamId: opponentTeam.id,
                contestMatchGroupId: contestMatchGroupId,
              },
            });
          }
        });
        await client.contestMatchGroup.update({
          where: {
            id: contestMatchGroupId,
          },
          data: {
            contestTeam: {
              connect: {
                id: team.id,
              },
            },
          },
        });

        await client.contestGroupMatchResult.create({
          data: {
            contest: {
              connect: {
                contestId,
              },
            },
            contestMatchGroup: {
              connect: {
                id: contestMatchGroupId,
              },
            },
            contestTeam: {
              connect: {
                id: team.id,
              },
            },
          },
        });
      });
    }, 100);
  }

  return {
    ok: true,
  };
};

export default {
  Mutation: {
    createContestGroupMatchHistory: createContestGroupMatchHistoryResolvers,
  },
};
