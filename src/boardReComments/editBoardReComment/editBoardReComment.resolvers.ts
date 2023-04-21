import client from "../../client";
import { protectedResolver } from "../../users/users.utils";

const editBoardCommentResolver = async (
  _,
  { id, payload },
  { loggedInUser, client }
) => {
  const comment = await client.boardReComment.findUnique({
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
      error: "Comment not found.",
    };
  } else if (comment.userId !== loggedInUser.id) {
    return {
      ok: false,
      error: "Not Authorized",
    };
  } else {
    await client.boardReComment.update({
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
    editBoardReComment: protectedResolver(editBoardCommentResolver),
  },
};
