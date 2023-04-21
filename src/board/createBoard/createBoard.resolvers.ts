import { protectedResolver } from "../../users/users.utils";

const createBoardResolvers = async (
  _,
  { id, title, discription, sortation },
  { loggedInUser, client }
) => {
  let sortationLink;

  if (sortation === "group") {
    sortationLink = {
      title,
      group: { connect: { id } },
      user: {
        connect: { id: loggedInUser.id },
      },
      discription,
      sortation,
    };
  } else if (sortation === "tutor") {
    sortationLink = {
      title,
      tutor: { connect: { id } },
      user: {
        connect: { id: loggedInUser.id },
      },
      discription,
      sortation,
    };
  }
  return await client.board.create({
    data: sortationLink,
  });
};

export default {
  Mutation: {
    createBoard: protectedResolver(createBoardResolvers),
  },
};
