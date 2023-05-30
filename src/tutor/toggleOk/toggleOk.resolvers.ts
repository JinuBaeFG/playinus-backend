import { protectedResolver } from "../../users/users.utils";

const toggleOkResolvers = async (_, { id }, { loggedInUser, client }) => {
  const response = await client.tutorInquiryComment.findUnique({
    where: {
      id,
    },
  });

  if (!response) {
    return {
      ok: false,
      error: "문의에 대한 답변을 찾을 수 없습니다.",
    };
  }

  await client.tutorInquiryComment.update({
    where: {
      id,
    },
    data: {
      answerOk: true,
    },
  });

  return {
    ok: true,
  };
};

export default {
  Mutation: {
    toggleOk: protectedResolver(toggleOkResolvers),
  },
};
