import { protectedResolver } from "../../users/users.utils";

const deleteReCommentResolver = async (_, { id }, { loggedInUser, client }) => {
  const comment = await client.reComment.findUnique({
    where: {
      id,
    },
    select: {
      userId: true,
    },
  });
  if (!comment) {
    return {
      ok: false,
      error: "찾을 수 없는 댓글입니다.",
    };
  } else if (comment.userId !== loggedInUser.id) {
    return {
      ok: false,
      error: "삭제할 권한이 없습니다.",
    };
  } else {
    await client.reComment.delete({
      where: {
        id,
      },
    });
    return {
      ok: true,
    };
  }
};

export default {
  Mutation: {
    deleteReComment: protectedResolver(deleteReCommentResolver),
  },
};
