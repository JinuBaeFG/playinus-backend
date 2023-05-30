import client from "../../client";
import { cryptFunction } from "../users.utils";

const checkPhoneResolvers = async (_, { phoneNumber }) => {
  const uglyPhoneNumber = cryptFunction(phoneNumber);

  const result = await client.user.findUnique({
    where: {
      phoneNumber: uglyPhoneNumber,
    },
  });

  if (result !== null) {
    return {
      ok: false,
      error: "이미 가입된 휴대전화번호 입니다.",
    };
  } else {
    return {
      ok: true,
    };
  }
};

export default {
  Mutation: {
    checkPhone: checkPhoneResolvers,
  },
};
