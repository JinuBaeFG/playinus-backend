const seeFacilitiesResolvers = async (
  _,
  { offset, sportsEvent, maxX, maxY, minX, minY },
  { client }
) => {
  if (
    sportsEvent !== undefined &&
    sportsEvent !== null &&
    sportsEvent !== "모든 종목"
  ) {
    return await client.facility.findMany({
      take: 5,
      skip: offset,
      where: {
        facilitySports: {
          some: {
            name: sportsEvent,
          },
        },
      },
      orderBy: {
        createdAt: "desc",
      },
    });
  } else {
    return await client.facility.findMany({
      take: 5,
      skip: offset,
      orderBy: {
        createdAt: "desc",
      },
    });
  }
};

export default {
  Query: {
    seeFacilities: seeFacilitiesResolvers,
  },
};
