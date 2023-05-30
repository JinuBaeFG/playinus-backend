import client from "../../client";
import { protectedResolver } from "../../users/users.utils";

const editReCommentResolver = async (
  _,
  { id, payload },
  { loggedInUser, client }
) => {
  const comment = await client.reComment.findUnique({
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
    await client.reComment.update({
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
    editReComment: protectedResolver(editReCommentResolver),
  },
};
