const loginCheckResovlers = (_, { uid, interlock }, { client }) => {
  let where;
  if (interlock === "kakao") {
    where = {
      kakaoId: uid,
    };
  } else if (interlock === "apple") {
    where = {
      appleId: uid,
    };
  } else if (interlock === "google") {
    where = {
      googleId: uid,
    };
  }
  const result = client.user.findUnique({
    where,
  });

  if (result) {
    return {
      ok: true,
    };
  } else {
    return {
      ok: false,
    };
  }
};

export default {
  Query: {
    loginCheck: loginCheckResovlers,
  },
};
