import { protectedResolver } from "../../users/users.utils";

const seeJoinResolver = async (_, { groupId }, { client }) => {
  const joinRequest = await client.groupJoinRequest.findMany({
    where: {
      groupId,
    },
    include: {
      user: true,
      group: true,
    },
  });
  console.log(joinRequest);
  return joinRequest;
};

export default {
  Query: {
    seeJoin: protectedResolver(seeJoinResolver),
  },
};
