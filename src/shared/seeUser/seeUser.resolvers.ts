import { protectedResolver } from "../../users/users.utils";

const seeUserResolvers = async (_, { id }, { loggedInUser, client }) => {
  return await client.user.findUnique({
    where: {
      id,
    },
  });
};

export default {
  Query: {
    seeUser: protectedResolver(seeUserResolvers),
  },
};
