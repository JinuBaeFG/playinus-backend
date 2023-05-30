export default {
  Query: {
    seePhotoComments: async (_, { id, offset }, { client }) => {
      return await client.comment.findMany({
        take: 5,
        skip: offset,
        where: {
          photoId: id,
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
