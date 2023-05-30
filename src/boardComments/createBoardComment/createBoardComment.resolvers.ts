import { protectedResolver } from "../../users/users.utils";

const createBoardCommentResolver = async (
  _,
  { boardId, payload },
  { loggedInUser, client }
) => {
  const ok = await client.board.findUnique({
    where: {
      id: boardId,
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
  const newComment = await client.boardComment.create({
    data: {
      payload,
      board: {
        connect: {
          id: boardId,
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
    createBoardComment: protectedResolver(createBoardCommentResolver),
  },
};
