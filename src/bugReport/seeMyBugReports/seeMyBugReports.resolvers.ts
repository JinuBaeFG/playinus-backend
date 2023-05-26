import client from "../../client";

const seeMyBugReportsResolvers = async (_, { offset }, { loggedInUser }) => {
  return await client.bugReport.findMany({
    take: 5,
    skip: offset,
    where: {
      user: {
        id: loggedInUser.id,
      },
    },
  });
};

export default {
  Query: {
    seeMyBugReports: seeMyBugReportsResolvers,
  },
};
