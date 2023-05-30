import { protectedResolver } from "../../users/users.utils";

const seeInquiryResolver = (_, { id }, { loggedInUser, client }) => {
  return client.tutorInquiry.findUnique({
    where: {
      id,
    },
    include: {
      user: true,
      tutor: true,
      tutorInquiryComment: true,
    },
  });
};

export default {
  Query: {
    seeInquiry: protectedResolver(seeInquiryResolver),
  },
};
