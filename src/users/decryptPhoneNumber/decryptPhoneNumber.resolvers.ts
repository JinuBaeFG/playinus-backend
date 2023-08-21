import { deCryptFunction } from "../users.utils";

const decryptPhoneNumberResovlers = async (_, { phoneNumber }) => {
  const returnValue = deCryptFunction(phoneNumber);

  return {
    ok: true,
    phoneNumber: returnValue,
  };
};

export default {
  Mutation: {
    decryptPhoneNumber: decryptPhoneNumberResovlers,
  },
};
