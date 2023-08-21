import client from "../../client";

const findTeamResolvers = async (_, { contestId, teamName }) => {
  const isTeam = await client.contestTeam.findFirst({
    where: {
      contestId,
      teamName,
    },
  });
  let team;
  if (isTeam !== null) {
    team = await client.contestTeam.findUnique({
      where: {
        id: isTeam.id,
      },
      include: {
        contestUser: true,
        _count: true,
      },
    });
  }

  if (team) {
    if (team._count.contestUser == 1) {
      const user = await client.user.findUnique({
        where: {
          id: team.contestUser[0].userId,
        },
      });

      return {
        ok: true,
        info: `${team.teamName}의 멤버가 맞습니까? 팀원 : ${user.username}`,
      };
    } else if (team._count.contestUser == 2) {
      return {
        ok: false,
        info: `이미 ${team.teamName} 팀이 존재합니다.`,
      };
    } else if (team._count.contestUser == 0) {
      return {
        ok: true,
        info: "사용할 수 있는 팀명 입니다.",
      };
    }
  } else {
    return {
      ok: true,
      info: "사용할 수 있는 팀명 입니다.",
    };
  }
};

export default {
  Mutation: {
    findTeam: findTeamResolvers,
  },
};
