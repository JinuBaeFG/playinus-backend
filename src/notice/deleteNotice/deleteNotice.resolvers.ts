import { protectedResolver } from "../../users/users.utils";

const deleteNoticeResolvers = async (_, { id }, { loggedInUser, client }) => {
  const notice = await client.notice.findUnique({
    where: {
      id,
    },
    select: {
      userId: true,
    },
  });
  if (!notice) {
    return {
      ok: false,
      error: "공지사항이 존재하지 않습니다.",
    };
  } else if (notice.userId !== loggedInUser.id) {
    return {
      ok: false,
      error: "삭제할 권한이 없습니다.",
    };
  } else {
    await client.notice.delete({
      where: {
        id,
      },
    });
    return {
      ok: true,
    };
  }
};

export default {
  Mutation: {
    deleteNotice: protectedResolver(deleteNoticeResolvers),
  },
};
