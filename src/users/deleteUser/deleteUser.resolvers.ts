import client from "../../client";
import * as bcrypt from "bcrypt";

const deleteUserResolvers = async (_, { password }, { loggedInUser }) => {
  let user = await client.user.findUnique({
    where: {
      id: loggedInUser.id,
    },
    select: {
      password: true,
    },
  });
  const checkPw = await bcrypt.compare(password, user.password);
  if (checkPw) {
    await client.user.delete({
      where: {
        id: loggedInUser.id,
      },
    });

    return {
      ok: true,
    };
  }

  return {
    ok: false,
    error: "올바르지 않은 비밀번호 입니다.",
  };
};

export default {
  Mutation: {
    deleteUser: deleteUserResolvers,
  },
};
