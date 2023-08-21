import client from "../../client";
import { cryptFunction } from "../../users/users.utils";

const searchContestUserResolvers = async (
  _,
  { email, username, phoneNumber }
) => {
  let uglyPhoneNumber;
  if (phoneNumber !== undefined && phoneNumber !== null) {
    uglyPhoneNumber = cryptFunction(phoneNumber);
  }

  const users = await client.user.findMany({
    where: {
      ...(email !== undefined &&
        email !== null && {
          email,
        }),
      ...(username !== undefined &&
        username !== null && {
          username,
        }),
      ...(phoneNumber !== undefined &&
        phoneNumber !== null && {
          phoneNumber: uglyPhoneNumber,
        }),
    },
  });

  return users;
};

export default {
  Query: {
    searchContestUser: searchContestUserResolvers,
  },
};
