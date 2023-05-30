import * as bcrypt from "bcrypt";
import * as jwt from "jsonwebtoken";
import { Resolvers } from "../../types";

const resolvers: Resolvers = {
  Mutation: {
    login: async (_, { email, password }, { client }) => {
      try {
        const checkUsername = await client.user.findFirst({
          where: { email },
        });
        if (!checkUsername) {
          return {
            ok: false,
            error: "존재하지 않는 사용자 입니다.",
          };
        }
        const checkPw = await bcrypt.compare(password, checkUsername.password);
        if (!checkPw) {
          return {
            ok: false,
            error: "올바르지 않은 비밀번호 입니다.",
          };
        }
        const token = await jwt.sign(
          { id: checkUsername.id },
          process.env.SECRET_KEY
        );
        return {
          ok: true,
          token,
        };
      } catch (e) {
        return console.log(e);
      }
    },
  },
};

export default resolvers;
