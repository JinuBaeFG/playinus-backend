import { protectedResolver } from "../../users/users.utils";

const seeBoardsResolvers = async (
  _,
  { id, sortation, offset },
  { loggedInUser, client }
) => {
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
