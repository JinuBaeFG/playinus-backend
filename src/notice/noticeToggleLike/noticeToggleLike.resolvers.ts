import { protectedResolver } from "../../users/users.utils";

const noticeToggleLikeResolvers = async (
  _,
  { id },
  { loggedInUser, client }
) => {
  try {
    const notice = await client.notice.findUnique({
      where: {
        id,
      },
    });
    if (!notice) {
      return {
        ok: false,
        error: "피드를 찾을 수 없습니다.",
      };
    }
    const likeWhere = {
      noticeId_userId: {
        userId: loggedInUser.id,
        noticeId: id,
      },
    };
    const like = await client.noticeLike.findUnique({
      where: likeWhere,
    });
    if (like) {
      await client.noticeLike.delete({
        where: {
          noticeId_userId: {
            userId: loggedInUser.id,
            noticeId: id,
          },
        },
      });
    } else {
      await client.noticeLike.create({
        data: {
          user: {
            connect: {
              id: loggedInUser.id,
            },
          },
          notice: {
            connect: {
              id: notice.id,
            },
          },
        },
      });
    }
    return {
      ok: true,
    };
  } catch (e) {
    console.log(e);
  }
};

export default {
  Mutation: {
    noticeToggleLike: protectedResolver(noticeToggleLikeResolvers),
  },
};
