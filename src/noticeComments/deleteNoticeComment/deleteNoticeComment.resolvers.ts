import { protectedResolver } from "../../users/users.utils";

const deleteNoticeCommentResolver = async (
  _,
  { id },
  { loggedInUser, client }
) => {
  const comment = await client.noticeComment.findUnique({
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
    const recomment = await client.noticeReComment.findMany({
      where: {
        noticeCommentId: id,
      },
    });

    if (recomment.length === 0) {
      await client.noticeComment.delete({
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
    deleteNoticeComment: protectedResolver(deleteNoticeCommentResolver),
  },
};
