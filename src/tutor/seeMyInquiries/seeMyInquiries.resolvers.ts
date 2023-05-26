import { protectedResolver } from "../../users/users.utils";

const seeInquiriesResolver = (_, { offset }, { loggedInUser, client }) => {
  return client.tutorInquiry.findMany({
    take: 20,
    skip: offset,
    where: {
      userId: loggedInUser.id,
    },
    include: {
      user: true,
      tutor: true,
    },
  });
};

export default {
  Query: {
    seeMyInquiries: protectedResolver(seeInquiriesResolver),
  },
};
