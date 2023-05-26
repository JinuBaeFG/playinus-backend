import { protectedResolver } from "../../users/users.utils";

const checkMyRequestResolvers = async (
  _,
  { offset },
  { loggedInUser, client }
) => {
  return await client.requestAddTutor.findMany({
    take: 5,
    skip: offset,
    where: {
      userId: loggedInUser.id,
    },
  });
};

export default {
  Query: {
    checkMyRequest: protectedResolver(checkMyRequestResolvers),
  },
};
