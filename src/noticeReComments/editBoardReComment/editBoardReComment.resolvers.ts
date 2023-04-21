import client from "../../client";
import { protectedResolver } from "../../users/users.utils";

const editNoticeCommentResolver = async (
  _,
  { id, payload },
  { loggedInUser, client }
) => {
  const comment = await client.noticeReComment.findUnique({
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
      error: "댓글을 찾을 수 없습니다.",
    };
  } else if (comment.userId !== loggedInUser.id) {
    return {
      ok: false,
      error: "권한이 없습니다.",
    };
  } else {
    await client.noticeReComment.update({
      where: {
        id,
      },
      data: {
        payload,
      },
    });
    return {
      ok: true,
    };
  }
};

export default {
  Mutation: {
    editNoticeReComment: protectedResolver(editNoticeCommentResolver),
  },
};
