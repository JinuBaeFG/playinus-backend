import { blockUserList } from "../photo.utils";

export default {
  Query: {
    seeReComments: async (_, { id, offset }, { client, loggedInUser }) => {
      let blockUsers = await client.blockUser.findMany({
        where: {
          userId: loggedInUser.id,
        },
      });

      let NOT;
      if (blockUsers) {
        NOT = blockUserList(blockUsers);
      }

      return await client.reComment.findMany({
        take: 5,
        skip: offset,
        where: {
          commentId: id,
        },
        include: {
          user: true,
          comment: true,
        },
        orderBy: {
          createdAt: "desc",
        },
      });
    },
  },
};
