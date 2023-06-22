import client from "../../client";
import { blockGroupList } from "../../photos/photo.utils";
import { protectedResolver } from "../../users/users.utils";

const seeSearchGroupsResolver = async (
  _,
  { offset, sportsEvent },
  { loggedInUser }
) => {
  if (
    sportsEvent !== undefined &&
    sportsEvent !== null &&
    sportsEvent !== "모든 종목"
  ) {
    console.log(offset);
    return await client.group.findMany({
      take: 3,
      skip: offset,
      where: {
        sportsEvent,
      },
      orderBy: {
        createdAt: "desc",
      },
    });
  } else {
    return await client.group.findMany({
      take: 3,
      skip: offset,
      orderBy: {
        createdAt: "desc",
      },
    });
  }
};

export default {
  Query: {
    seeSearchGroups: seeSearchGroupsResolver,
  },
};
