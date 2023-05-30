import client from "../../client";

const seeMyReportsResolvers = async (_, { offset }, { loggedInUser }) => {
  return await client.report.findMany({
    take: 5,
    skip: offset,
    where: {
      userId: loggedInUser.id,
    },
  });
};

export default {
  Query: {
    seeMyReports: seeMyReportsResolvers,
  },
};
