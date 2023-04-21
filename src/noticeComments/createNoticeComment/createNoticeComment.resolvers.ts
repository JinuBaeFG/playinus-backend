import { protectedResolver } from "../../users/users.utils";

const createNoticeCommentResolver = async (
  _,
  { noticeId, payload },
  { loggedInUser, client }
) => {
  const ok = await client.notice.findUnique({
    where: {
      id: noticeId,
    },
    select: {
      id: true,
    },
  });
  if (!ok) {
    return {
      ok: false,
      error: "게시물이 존재하지 않습니다.",
    };
  }
  const newComment = await client.noticeComment.create({
    data: {
      payload,
      notice: {
        connect: {
          id: noticeId,
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
    createNoticeComment: protectedResolver(createNoticeCommentResolver),
  },
};
