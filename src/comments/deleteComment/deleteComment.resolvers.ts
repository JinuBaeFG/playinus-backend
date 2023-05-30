import { protectedResolver } from "../../users/users.utils";

const deleteCommentResolver = async (_, { id }, { loggedInUser, client }) => {
  const comment = await client.comment.findUnique({
    where: {
      id,
    },
    select: {
      userId: true,
    },
  });
  console.log(comment.userId, loggedInUser.id);
  if (!comment) {
    return {
      ok: false,
      error: "댓글이 존재하지 않습니다.",
    };
  } else if (comment.userId !== loggedInUser.id) {
    return {
      ok: false,
      error: "삭제할 권한이 없습니다.",
    };
  } else {
    const recomment = await client.reComment.findMany({
      where: {
        commentId: id,
      },
    });
    if (recomment.length === 0) {
      await client.comment.delete({
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
        error: `답글이 존재하여 \n 삭제할 수 없습니다.`,
      };
    }
  }
};

export default {
  Mutation: {
    deleteComment: protectedResolver(deleteCommentResolver),
  },
};
