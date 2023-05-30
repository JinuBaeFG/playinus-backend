import { protectedResolver } from "../../users/users.utils";

const joinAccessResolver = async (
  _,
  { id, userId, groupId, username },
  { client }
) => {
  console.log(userId, groupId);
  await client.group.update({
    where: {
      id: groupId,
    },
    data: {
      users: {
        connect: {
          id: userId,
        },
      },
    },
  });

  await client.groupJoinRequest.delete({
    where: {
      id,
    },
  });
  return {
    ok: true,
  };
};

export default {
  Mutation: {
    joinAccess: protectedResolver(joinAccessResolver),
  },
};
