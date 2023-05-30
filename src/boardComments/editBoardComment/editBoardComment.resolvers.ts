import client from "../../client";
import { protectedResolver } from "../../users/users.utils";

const editBoardCommentResolver = async (
  _,
  { id, payload },
  { loggedInUser, client }
) => {
  const comment = await client.boardComment.findUnique({
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
      error: "수정할 수 있는 권한이 없습니다.",
    };
  } else {
    await client.boardComment.update({
      where: {
        id,
      },
      data: {
        payload,
      },
    });
    return {
      ok: true,
      id,
    };
  }
};

export default {
  Mutation: {
    editBoardComment: protectedResolver(editBoardCommentResolver),
  },
};
