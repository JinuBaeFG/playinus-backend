import client from "../../client";

const deleteContestGroupMatchTeamResolvers = async (
  _,
  { contestId, contestTeamId, contestMatchGroupId }
) => {
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

  const deleteHistory = contestMatchHistory.map(async (item) => {
    await client.contestGroupMatchHistory.delete({
      where: {
        id: item.id,
      },
    });
  });

  const deleteResult = contestMatchResult.map(async (item) => {
    await client.contestGroupMatchResult.delete({
      where: {
        id: item.id,
      },
    });
  });

  await client.contestMatchGroup.update({
    where: {
      id: contestMatchGroupId,
    },
    data: {
      contestTeam: {
        disconnect: { id: contestTeamId },
      },
    },
  });

  const contestTeam = await client.contestTeam.findMany({
    where: {
      contestMatchGroupId,
    },
  });

  if (deleteHistory) {
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
      await client.contestGroupMatchResult.create({
        data: {
          contest: {
            connect: {
              contestId,
            },
          },
          contestTeam: {
            connect: {
              id: team.id,
            },
          },
          contestMatchGroup: {
            connect: {
              id: contestMatchGroupId,
            },
          },
        },
      });
    });
  }
  return {
    ok: true,
  };
};

export default {
  Mutation: {
    deleteContestGroupMatchTeam: deleteContestGroupMatchTeamResolvers,
  },
};
