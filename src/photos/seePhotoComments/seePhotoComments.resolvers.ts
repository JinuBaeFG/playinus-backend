import { blockUserList } from "../photo.utils";

export default {
  Query: {
    seePhotoComments: async (_, { id, offset }, { client, loggedInUser }) => {
      let blockUsers = await client.blockUser.findMany({
        where: {
          userId: loggedInUser.id,
        },
      });

      let NOT;
      if (blockUsers) {
        NOT = blockUserList(blockUsers);
      }

      return await client.comment.findMany({
        take: 5,
        skip: offset,
        where: {
          photoId: id,
          NOT,
        },
        include: {
          user: true,
          photo: true,
        },
        orderBy: {
          createdAt: "desc",
        },
      });
    },
  },
};
