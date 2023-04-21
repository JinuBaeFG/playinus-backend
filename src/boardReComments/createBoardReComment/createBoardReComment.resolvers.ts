import { protectedResolver } from "../../users/users.utils";

const createBoardReCommentResolver = async (
  _,
  { boardCommentId, payload },
  { loggedInUser, client }
) => {
  const ok = await client.boardComment.findUnique({
    where: {
      id: boardCommentId,
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
  const newComment = await client.boardReComment.create({
    data: {
      payload,
      boardComment: {
        connect: {
          id: boardCommentId,
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
    createBoardReComment: protectedResolver(createBoardReCommentResolver),
  },
};
