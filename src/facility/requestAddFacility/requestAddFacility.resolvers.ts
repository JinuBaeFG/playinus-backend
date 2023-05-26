const requestAddFacilityResolvers = async (
  _,
  { title, discription },
  { loggedInUser, client }
) => {
  const facility = await client.requestAddFacility.create({
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

  if (facility) {
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
    requestAddFacility: requestAddFacilityResolvers,
  },
};
