import * as jwt from "jsonwebtoken";

const loginCheckResovlers = async (
  _,
  { uid, token, email, interlock },
  { client }
) => {
  let where;
  if (interlock === "kakao") {
    where = {
      kakaoID: uid,
    };
  } else if (interlock === "apple") {
    where = {
      appleID: uid,
    };
  } else if (interlock === "google") {
    where = {
      googleID: uid,
    };
  } else if (interlock === "naver") {
    where = {
      naverID: uid,
    };
  }
  const result = await client.user.findUnique({
    where,
  });

  if (result) {
    const newToken = await jwt.sign({ id: result.id }, process.env.SECRET_KEY);

    return {
      ok: true,
      uid,
      email,
      token: newToken,
      interlock,
    };
  } else {
    return {
      ok: false,
      uid,
      email,
      token,
      interlock,
    };
  }
};

export default {
  Mutation: {
    loginCheck: loginCheckResovlers,
  },
};
