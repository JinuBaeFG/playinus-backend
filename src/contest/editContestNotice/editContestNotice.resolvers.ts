import client from "../../client";

const editContestNoticeResolvers = async (
  _,
  { id, contestId, noticeTitle, noticeDiscription }
) => {
  await client.contestNotice.update({
    where: {
      id,
    },
    data: {
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
    editContestNotice: editContestNoticeResolvers,
  },
};
