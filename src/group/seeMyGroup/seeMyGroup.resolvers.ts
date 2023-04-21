import { protectedResolver } from "../../users/users.utils";

const seeMyGroupResolver = async (_, { offset }, { loggedInUser, client }) => {
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
};

export default {
  Query: {
    seeMyGroup: protectedResolver(seeMyGroupResolver),
  },
};
