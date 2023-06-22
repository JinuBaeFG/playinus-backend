const seeTutorsResolvers = async (
  _,
  { offset, sportsEvent },
  { loggedInUser, client }
) => {
  if (
    sportsEvent !== undefined &&
    sportsEvent !== null &&
    sportsEvent !== "모든 종목"
  ) {
    return await client.tutor.findMany({
      take: 3,
      skip: offset,
      where: {
        tutorSportsEvent: {
          some: {
            name: sportsEvent,
          },
        },
        access: true,
      },
      orderBy: {
        createdAt: "desc",
      },
    });
  } else {
    return await client.tutor.findMany({
      take: 3,
      skip: offset,
      where: {
        access: true,
      },
    });
  }
};

export default {
  Query: {
    seeTutors: seeTutorsResolvers,
  },
};
