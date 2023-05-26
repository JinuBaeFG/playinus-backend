import { protectedResolver } from "../../users/users.utils";

const deleteBoardResolvers = async (_, { id }, { loggedInUser, client }) => {
  const board = await client.board.findUnique({
    where: {
      id,
    },
    select: {
      userId: true,
    },
  });
  if (!board) {
    return {
      ok: false,
      error: "피드가 존재하지 않습니다.",
    };
  } else if (board.userId !== loggedInUser.id) {
    return {
      ok: false,
      error: "삭제할 권한이 없습니다.",
    };
  } else {
    await client.board.delete({
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
    deleteBoard: protectedResolver(deleteBoardResolvers),
  },
};
