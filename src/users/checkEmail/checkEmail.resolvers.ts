import client from "../../client";

const checkEmailResolvers = async (_, { email }) => {
  const check = await client.user.findUnique({
    where: {
      email,
    },
  });

  if (check !== null) {
    return {
      ok: false,
      error: "이미 존재하는 이메일입니다.",
    };
  } else {
    return {
      ok: true,
    };
  }
};

export default {
  Mutation: {
    checkEmail: checkEmailResolvers,
  },
};
