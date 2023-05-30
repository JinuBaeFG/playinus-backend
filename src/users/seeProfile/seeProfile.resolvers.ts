import { deCryptFunction } from "../users.utils";

const seeProfileResolver = async (_, { id }, { client }) => {
  const profile = await client.user.findUnique({
    where: {
      id,
    },
    include: {
      photos: true,
      group: true,
      tutor: true,
    },
  });

  profile.phoneNumber = deCryptFunction(profile.phoneNumber);

  return profile;
};

export default {
  Query: {
    seeProfile: seeProfileResolver,
  },
};
