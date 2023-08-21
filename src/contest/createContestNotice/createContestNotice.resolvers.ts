import client from "../../client";

const createContestNoticeResolvers = async (
  _,
  { contestId, noticeTitle, noticeDiscription }
) => {
  await client.contestNotice.create({
    data: {
      contest: {
        connect: {
          contestId,
        },
      },
      noticeTitle,
      noticeDiscription,
    },
  });

  return {
    ok: true,
  };
};

export default {
  Mutation: {
    createContestNotice: createContestNoticeResolvers,
  },
};
