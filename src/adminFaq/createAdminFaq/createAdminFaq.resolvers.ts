import { uploadToLocals } from "../../shared/shared.util";

const createAdminFaqResolvers = async (
  _,
  { title, discription },
  { client }
) => {
  const result = await client.adminFaq.create({
    data: {
      title,
      discription,
    },
  });

  return {
    ok: true,
  };
};

export default {
  Mutation: {
    createAdminFaq: createAdminFaqResolvers,
  },
};
