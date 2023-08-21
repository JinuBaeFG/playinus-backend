import client from "../../client";

const deleteContestNoticeResolvers = async (_, { id }) => {
  await client.contestNotice.delete({
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
    deleteContestNotice: deleteContestNoticeResolvers,
  },
};
