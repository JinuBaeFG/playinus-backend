import * as bcrypt from "bcrypt";
import * as jwt from "jsonwebtoken";
import { cryptFunction, deCryptFunction } from "../users.utils";

export default {
  Mutation: {
    naverAccount: async (
      _,
      {
        username,
        email,
        password,
        phoneNumber,
        interlock,
        uid,
        privacyAccess,
        usetermAccess,
      },
      { client }
    ) => {
      try {
        const uglyPhoneNumber = cryptFunction(phoneNumber);
        const existingUser = await client.user.findUnique({
          where: {
            phoneNumber: uglyPhoneNumber,
          },
        });

        if (existingUser !== null) {
          if (existingUser.naverConnect) {
            const token = await jwt.sign(
              { id: existingUser.id },
              process.env.SECRET_KEY
            );
            return {
              ok: true,
              error: token,
            };
          } else {
            const updateUser = await client.user.update({
              where: {
                phoneNumber: uglyPhoneNumber,
              },
              data: {
                naverConnect: true,
                naverID: uid,
              },
            });

            const token = await jwt.sign(
              { id: updateUser.id },
              process.env.SECRET_KEY
            );
            return {
              ok: true,
              error: token,
            };
          }
        }
        const uglyPassword = await bcrypt.hash(password, 10);

        const newUser = await client.user.create({
          data: {
            username,
            email,
            phoneNumber: uglyPhoneNumber,
            password: uglyPassword,
            kakaoConnect: interlock === "kakao" ? true : false,
            kakaoID: interlock === "kakao" ? uid : null,
            googleConnect: interlock === "google" ? true : false,
            googleID: interlock === "google" ? uid : null,
            appleConnect: interlock === "apple" ? true : false,
            appleID: interlock === "apple" ? uid : null,
            naverConnect: interlock === "naver" ? true : false,
            naverID: interlock === "naver" ? uid : null,
            privacyAccess,
            usetermAccess,
          },
        });

        const token = await jwt.sign(
          {
            id: newUser.id,
          },
          process.env.SECRET_KEY
        );

        if (token !== undefined) {
          return {
            ok: true,
            error: token,
          };
        }
      } catch (e) {
        console.log(e);
        return {
          ok: false,
          error: "회원가입 중 오류가 발생하였습니다.",
        };
      }
    },
  },
};
