import { blockGroupList } from "../../photos/photo.utils";
import { protectedResolver } from "../../users/users.utils";

const seeMyGroupResolver = async (
  _,
  { offset, sportsEvent },
  { loggedInUser, client }
) => {
  if (
    sportsEvent !== undefined &&
    sportsEvent !== null &&
    sportsEvent !== "모든 종목"
  ) {
    return await client.group.findMany({
      take: 5,
      skip: offset,
      where: {
        users: {
          some: {
            id: loggedInUser.id,
          },
        },
        sportsEvent,
      },
      select: {
        id: true,
        name: true,
        groupImage: true,
      },
    });
  } else {
    return await client.group.findMany({
      take: 5,
      skip: offset,
      where: {
        users: {
          some: {
            id: loggedInUser.id,
          },
        },
      },
      select: {
        id: true,
        name: true,
        groupImage: true,
      },
    });
  }
};

export default {
  Query: {
    seeMyGroup: protectedResolver(seeMyGroupResolver),
  },
};
