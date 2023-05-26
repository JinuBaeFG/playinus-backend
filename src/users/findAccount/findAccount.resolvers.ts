import client from "../../client";
import { cryptFunction } from "../users.utils";

const findAccountResolvers = async (_, { phoneNumber }) => {
  const uglyPhoneNumber = cryptFunction(phoneNumber);
  const result = await client.user.findUnique({
    where: {
      phoneNumber: uglyPhoneNumber,
    },
  });

  return result;
};

export default {
  Query: {
    findAccountFromPhoneNumber: findAccountResolvers,
  },
};
