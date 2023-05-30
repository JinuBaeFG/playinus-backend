import { protectedResolver } from "../../users/users.utils";

const addInquiryResolver = async (
  _,
  { tutorId, title, discription },
  { loggedInUser, client }
) => {
  return await client.tutorInquiry.create({
    data: {
      tutor: {
        connect: {
          id: tutorId,
        },
      },
      user: {
        connect: {
          id: loggedInUser.id,
        },
      },
      inquiryTitle: title,
      inquiryDiscription: discription,
    },
  });
};

export default {
  Mutation: {
    addInquiry: protectedResolver(addInquiryResolver),
  },
};
