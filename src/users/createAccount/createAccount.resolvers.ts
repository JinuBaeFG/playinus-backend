import * as bcrypt from "bcrypt";

export default {
  Mutation: {
    createAccount: async (
      _,
      { username, email, password, phoneNumber },
      { client }
    ) => {
      try {
        const existingUser = await client.user.findFirst({
          where: {
            OR: [
              {
                username,
              },
              {
                email,
              },
            ],
          },
        });
        if (existingUser) {
          throw new Error("해당 이메일은 이미 사용중 입니다.");
        }
        const uglyPassword = await bcrypt.hash(password, 10);

        await client.user.create({
          data: {
            username,
            email,
            phoneNumber,
            password: uglyPassword,
          },
        });
        return {
          ok: true,
        };
      } catch (e) {
        return {
          ok: false,
          error: "Cant Create Account.",
        };
      }
    },
  },
};
