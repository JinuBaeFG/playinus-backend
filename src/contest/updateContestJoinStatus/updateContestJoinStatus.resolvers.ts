const updateContestJoinStatusResolvers = async (
  _,
  { contestPaymentId, status },
  { client }
) => {
  await client.contestUser.update({
    where: {
      contestPaymentId,
    },
    data: {
      contestPaymentStatus: status,
    },
  });
  return {
    ok: true,
  };
};

export default {
  Mutation: {
    updateContestJoinStatus: updateContestJoinStatusResolvers,
  },
};
