const seeFeedResolver = async (
  _,
  { offset, sportsEvent, category },
  { loggedInUser, client }
) => {
  if (
    sportsEvent !== undefined &&
    sportsEvent !== null &&
    sportsEvent !== "모든 종목"
  ) {
    if (category !== undefined && category !== null && category !== "") {
      return await client.photo.findMany({
        take: 2,
        skip: offset,
        where: {
          sportsEvent,
          feedCategory: category,
        },
        orderBy: {
          createdAt: "desc",
        },
      });
    } else {
      return await client.photo.findMany({
        take: 2,
        skip: offset,
        where: {
          sportsEvent,
        },
        orderBy: {
          createdAt: "desc",
        },
      });
    }
  } else {
    if (category !== undefined && category !== null && category !== "") {
      return await client.photo.findMany({
        take: 2,
        skip: offset,
        where: {
          feedCategory: category,
        },
        orderBy: {
          createdAt: "desc",
        },
      });
    } else {
      return await client.photo.findMany({
        take: 2,
        skip: offset,
        orderBy: {
          createdAt: "desc",
        },
      });
    }
  }
};

export default {
  Query: {
    seeFeed: seeFeedResolver,
  },
};
