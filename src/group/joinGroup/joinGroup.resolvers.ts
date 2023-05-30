import { protectedResolver } from "../../users/users.utils";

const joinGroupResolver = async (_, { id }, { loggedInUser, client }) => {
  const group = await client.group.findUnique({
    where: {
      id,
    },
  });
  if (!group) {
    return {
      ok: false,
      error: "그룹을 찾을 수 없습니다.",
    };
  }
  const joinWhere = {
    userId_groupId: {
      groupId: id,
      userId: loggedInUser.id,
    },
  };

  const join = await client.groupJoinRequest.findUnique({
    where: joinWhere,
  });
  if (join) {
    await client.groupJoinRequest.delete({
      where: joinWhere,
    });
  } else {
    await client.groupJoinRequest.create({
      data: {
        group: {
          connect: { id },
        },
        user: {
          connect: { id: loggedInUser.id },
        },
      },
    });
  }

  return {
    ok: true,
  };
};

export default {
  Mutation: {
    joinGroup: protectedResolver(joinGroupResolver),
  },
};
