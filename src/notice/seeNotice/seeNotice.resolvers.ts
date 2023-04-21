import { protectedResolver } from "../../users/users.utils";

const seeNoticeResolvers = async (_, { id }, { loggedInUser, client }) => {
  return await client.notice.findUnique({
    where: {
      id,
    },
    include: {
      user: true,
    },
  });
};

export default {
  Query: {
    seeNotice: protectedResolver(seeNoticeResolvers),
  },
};
