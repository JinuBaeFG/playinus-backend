const requestAddTutorResolvers = async (
  _,
  { title, discription },
  { loggedInUser, client }
) => {
  const tutor = await client.requestAddTutor.create({
    data: {
      user: {
        connect: {
          id: loggedInUser.id,
        },
      },
      title,
      discription,
    },
  });

  if (tutor) {
    return {
      ok: true,
    };
  } else {
    return {
      ok: false,
      error: "ERROR",
    };
  }
};

export default {
  Mutation: {
    requestAddTutor: requestAddTutorResolvers,
  },
};
