import { protectedResolver } from "../../users/users.utils";

const deletePhotoResolvers = async (_, { id }, { loggedInUser, client }) => {
  const photo = await client.photo.findUnique({
    where: {
      id,
    },
    select: {
      userId: true,
    },
  });
  if (!photo) {
    return {
      ok: false,
      error: "피드가 존재하지 않습니다.",
    };
  } else if (photo.userId !== loggedInUser.id) {
    return {
      ok: false,
      error: "삭제할 권한이 없습니다.",
    };
  } else {
    const comment = await client.comment.findMany({
      where: {
        photoId: id,
      },
    });
    if (comment.length === 0) {
      await client.photo.delete({
        where: {
          id,
        },
      });
      return {
        ok: true,
      };
    } else {
      return {
        ok: false,
        error: `댓글이 존재하여 \n 삭제할 수 없습니다.`,
      };
    }
  }
};

export default {
  Mutation: {
    deletePhoto: protectedResolver(deletePhotoResolvers),
  },
};
