import client from "../../client";

const seeBlockUsersResolvers = async (_, __, { loggedInUser }) => {
  return await client.blockUser.findMany({
    where: {
      userId: loggedInUser.id,
    },
    include: {
      blockedBy: true,
      user: true,
    },
  });
};

export default {
  Query: {
    seeBlockUsers: seeBlockUsersResolvers,
  },
};
