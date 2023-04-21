import client from "../../client";
import { protectedResolver } from "../../users/users.utils";

const seeGroupsResolver = async (_, { offset }, { loggedInUser }) => {
  return await client.group.findMany({
    take: 5,
    skip: offset,
  });
};

export default {
  Query: {
    seeGroups: seeGroupsResolver,
  },
};
