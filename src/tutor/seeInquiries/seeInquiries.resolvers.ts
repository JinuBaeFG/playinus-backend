import { protectedResolver } from "../../users/users.utils";

const seeInquiriesResolver = (_, { id, offset }, { loggedInUser, client }) => {
  return client.tutorInquiry.findMany({
    take: 20,
    skip: offset,
    where: {
      tutorId: id,
    },
    include: {
      user: true,
      tutor: true,
    },
  });
};

export default {
  Query: {
    seeInquiries: protectedResolver(seeInquiriesResolver),
  },
};
