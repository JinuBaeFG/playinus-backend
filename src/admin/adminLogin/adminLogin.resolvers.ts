import * as bcrypt from "bcrypt";
import * as jwt from "jsonwebtoken";

const adminLoginResolvers = async (_, { id, password }, { client }) => {
  try {
    const check = await client.adminUser.findFirst({
      where: { userId: id },
    });
    if (!check) {
      return {
        ok: false,
        error: "존재하지 않는 사용자 입니다.",
      };
    }
    const uglyPassword = await bcrypt.hash(password, 10);
    console.log(uglyPassword);
    const checkPw = await bcrypt.compare(password, check.password);

    if (!checkPw) {
      return {
        ok: false,
        error: "올바르지 않은 비밀번호 입니다.",
      };
    }
    const token = await jwt.sign({ id: check.id }, process.env.SECRET_KEY);
    return {
      ok: true,
      token,
    };
  } catch (e) {
    return console.log(e);
  }
};

export default {
  Mutation: {
    adminLogin: adminLoginResolvers,
  },
};
