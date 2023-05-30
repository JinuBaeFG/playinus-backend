import { protectedResolver } from "../../users/users.utils";

const createNoticeReCommentResolver = async (
  _,
  { noticeCommentId, payload },
  { loggedInUser, client }
) => {
  const ok = await client.noticeComment.findUnique({
    where: {
      id: noticeCommentId,
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
  const newComment = await client.noticeReComment.create({
    data: {
      payload,
      noticeComment: {
        connect: {
          id: noticeCommentId,
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
    createNoticeReComment: protectedResolver(createNoticeReCommentResolver),
  },
};
