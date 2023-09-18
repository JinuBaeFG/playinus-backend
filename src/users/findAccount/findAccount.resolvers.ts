import client from "../../client";
import { cryptFunction } from "../users.utils";

const findAccountResolvers = async (_, { email }) => {
  const result = await client.user.findUnique({
    where: {
      email: email,
    },
  });

  return result;
};

export default {
  Query: {
    findAccountFromEmail: findAccountResolvers,
  },
};
