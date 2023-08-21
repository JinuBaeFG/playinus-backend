import client from "../client";

export default {
  Contest: {
    contestUser: ({ id }) => {
      return client.contest
        .findUnique({
          where: {
            id,
          },
        })
        .contestUser();
    },
    contestNotice: ({ id }) => {
      return client.contest
        .findUnique({
          where: {
            id,
          },
        })
        .contestNotice();
    },
    contestReport: ({ id }) => {
      return client.contest
        .findUnique({
          where: {
            id,
          },
        })
        .contestReport();
    },
    contestTierGroup: ({ id }) => {
      return client.contest
        .findUnique({
          where: {
            id,
          },
        })
        .contestTierGroup();
    },
    contestMatchGroup: ({ id }) => {
      return client.contest
        .findUnique({
          where: {
            id,
          },
        })
        .contestMatchGroup();
    },
    contestTournamentGroup: ({ id }) => {
      return client.contest
        .findUnique({
          where: {
            id,
          },
        })
        .contestTournamentGroup();
    },
    contestGroupMatchHistory: ({ id }) => {
      return client.contest
        .findUnique({
          where: {
            id,
          },
        })
        .contestGroupMatchHistory();
    },
    contestTournamentHistory: ({ id }) => {
      return client.contest
        .findUnique({
          where: {
            id,
          },
        })
        .contestTournamentHistory();
    },
    contestCourt: ({ id }) => {
      return client.contest
        .findUnique({
          where: {
            id,
          },
        })
        .contestCourt();
    },
  },
  ContestTeam: {
    contestUserCount: ({ id }) => {
      return client.contestUser.count({
        where: {
          contestTeam: { id },
        },
      });
    },
  },
  ContestUser: {
    user: ({ userId }) => {
      return client.user.findUnique({
        where: {
          id: userId,
        },
      });
    },
  },
  ContestMatchGroup: {
    contestTeam: ({ id }) => {
      return client.contestTeam.findMany({
        where: {
          contestMatchGroup: {
            id,
          },
        },
        include: {
          contestUser: true,
          contestGroupMatchResult: true,
        },
      });
    },
  },
  ContestGroupMatchHistory: {
    contest: ({ contestId }) => {
      return client.contest.findUnique({
        where: {
          contestId,
        },
      });
    },
    contestTeam: ({ contestTeamId }) => {
      return client.contestTeam.findUnique({
        where: {
          id: contestTeamId,
        },
        include: {
          contestUser: true,
        },
      });
    },
    opponentTeam: ({ opponentTeamId }) => {
      return client.contestTeam.findUnique({
        where: {
          id: opponentTeamId,
        },
        include: {
          contestUser: true,
        },
      });
    },
  },
  ContestGroupMatchResult: {
    contestTeam: ({ contestTeamId }) => {
      return client.contestTeam.findUnique({
        where: {
          id: contestTeamId,
        },
        include: {
          contestUser: true,
        },
      });
    },
  },
};
