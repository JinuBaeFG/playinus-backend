import { protectedResolver } from "../../users/users.utils";

const responseInquiryResolvers = async (
  _,
  { id, tutorId, userId, title, discription },
  { loggedInUser, client }
) => {
  let ok = false;

  const response = await client.tutorInquiry.update({
    where: {
      id,
    },
    data: {
      inquiryResponse: true,
    },
    include: {
      user: true,
      tutor: true,
    },
  });

  if (response) {
    ok = true;
  }

  if (ok) {
    await client.tutorInquiryComment.create({
      data: {
        responseTitle: title,
        responseDiscription: discription,
        user: {
          connect: {
            id: userId,
          },
        },
        tutor: {
          connect: {
            id: tutorId,
          },
        },
        tutorInquiry: {
          connect: {
            id,
          },
        },
        answerOk: false,
      },
    });

    return response;
  }
};

export default {
  Mutation: {
    responseInquiry: protectedResolver(responseInquiryResolvers),
  },
};
