import { blockBoardList } from "../../photos/photo.utils";
import { protectedResolver } from "../../users/users.utils";

const seeBoardsResolvers = async (
  _,
  { id, sortation, offset },
  { loggedInUser, client }
) => {
  let blockUsers = await client.blockUser.findMany({
    where: {
      userId: loggedInUser.id,
    },
  });

  let NOT;
  if (blockUsers) {
    NOT = blockBoardList(blockUsers);
  }

  let sortationWhere;
  if (sortation === "group") {
    sortationWhere = { groupId: id, sortation };
  } else if (sortation === "tutor") {
    sortationWhere = { tutorId: id, sortation };
  }
  return await client.board.findMany({
    take: 5,
    skip: offset,
    where: sortationWhere,
  });
};

export default {
  Query: {
    seeBoards: protectedResolver(seeBoardsResolvers),
  },
};
