import { protectedResolver } from "../../users/users.utils";

const createReCommentResolver = async (
  _,
  { commentId, payload },
  { loggedInUser, client }
) => {
  const ok = await client.comment.findUnique({
    where: {
      id: commentId,
    },
    select: {
      id: true,
    },
  });
  if (!ok) {
    return {
      ok: false,
      error: "댓글이 존재하지 않습니다.",
    };
  }
  const newComment = await client.reComment.create({
    data: {
      payload,
      comment: {
        connect: {
          id: commentId,
        },
      },
      user: {
        connect: {
          id: loggedInUser.id,
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
    createReComment: createReCommentResolver,
  },
};
