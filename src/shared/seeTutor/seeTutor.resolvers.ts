import { protectedResolver } from "../../users/users.utils";

const seeTutorResolvers = async (_, { id }, { loggedInUser, client }) => {
  return await client.tutor.findUnique({
    where: {
      id,
    },
  });
};

export default {
  Query: {
    seeTutor: protectedResolver(seeTutorResolvers),
  },
};
