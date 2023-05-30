import { protectedResolver } from "../../users/users.utils";

const boardToggleLikeResolvers = async (
  _,
  { id },
  { loggedInUser, client }
) => {
  try {
    const board = await client.board.findUnique({
      where: {
        id,
      },
    });
    if (!board) {
      return {
        ok: false,
        error: "피드를 찾을 수 없습니다.",
      };
    }
    const likeWhere = {
      boardId_userId: {
        userId: loggedInUser.id,
        boardId: id,
      },
    };
    const like = await client.boardLike.findUnique({
      where: likeWhere,
    });
    if (like) {
      await client.boardLike.delete({
        where: {
          boardId_userId: {
            userId: loggedInUser.id,
            boardId: id,
          },
        },
      });
    } else {
      await client.boardLike.create({
        data: {
          user: {
            connect: {
              id: loggedInUser.id,
            },
          },
          board: {
            connect: {
              id: board.id,
            },
          },
        },
      });
    }
    return {
      ok: true,
    };
  } catch (e) {
    console.log(e);
  }
};

export default {
  Mutation: {
    boardToggleLike: protectedResolver(boardToggleLikeResolvers),
  },
};
