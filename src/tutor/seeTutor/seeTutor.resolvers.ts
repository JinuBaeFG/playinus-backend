import { protectedResolver } from "../../users/users.utils";

const seeTutorResolver = (_, { id }, { loggedInUser, client }) => {
  return client.tutor.findUnique({
    where: {
      id,
    },
  });
};

export default {
  Query: {
    seeTutor: protectedResolver(seeTutorResolver),
  },
};
