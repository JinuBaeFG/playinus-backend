import { protectedResolver } from "../../users/users.utils";

const seeFeedResolver = async (_, { offset, id }, { loggedInUser, client }) => {
  return await client.photo.findMany({
    take: 2,
    skip: offset,
    where: {
      user: {
        id,
      },
    },
    orderBy: {
      createdAt: "desc",
    },
  });
};

export default {
  Query: {
    seeUserFeed: protectedResolver(seeFeedResolver),
  },
};
