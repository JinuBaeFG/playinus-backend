import { protectedResolver } from "../../users/users.utils";

const createCommentResolver = async (
  _,
  { photoId, payload },
  { loggedInUser, client }
) => {
  const ok = await client.photo.findUnique({
    where: {
      id: photoId,
    },
    select: {
      id: true,
    },
  });
  if (!ok) {
    return {
      ok: false,
      error: "Photo not found.",
    };
  }
  const newComment = await client.comment.create({
    data: {
      payload,
      photo: {
        connect: {
          id: photoId,
        },
      },
      user: {
        connect: {
          id: 1,
        },
      },
    },
  });
  return {
    ok: true,
    id: newComment.id,
  };
};

export default {
  Mutation: {
    createComment: createCommentResolver,
  },
};
