import client from "../../client";
import * as bcrypt from "bcrypt";

const changePasswordResolver = async (_, { id, password }) => {
  let uglyPassword = await bcrypt.hash(password, 10);

  const updateUser = await client.user.update({
    where: {
      id,
    },
    data: {
      ...(uglyPassword && { password: uglyPassword }),
    },
  });

  if (updateUser.id) {
    return {
      ok: true,
    };
  } else {
    return {
      ok: false,
      error: "변경 중 오류가 발생하였습니다.",
    };
  }
};

export default {
  Mutation: {
    changePassword: changePasswordResolver,
  },
};
