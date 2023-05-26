import { protectedResolver } from "../../users/users.utils";

const withdrawGroupResolver = async (_, { id }, { loggedInUser, client }) => {
  const joinCheck = await client.group.findFirst({
    where: {
      id,
      users: {
        some: {
          id: loggedInUser.id,
        },
      },
    },
  });

  if (!joinCheck) {
    return {
      ok: false,
      error: "가입되지 않은 그룹입니다.",
    };
  } else {
    await client.group.update({
      where: {
        id,
      },
      data: {
        users: {
          disconnect: {
            id: loggedInUser.id,
          },
        },
      },
    });
    return {
      ok: true,
    };
  }
};

export default {
  Mutation: {
    withdrawGroup: protectedResolver(withdrawGroupResolver),
  },
};
