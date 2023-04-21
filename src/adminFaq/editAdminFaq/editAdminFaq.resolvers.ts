import { uploadToLocals } from "../../shared/shared.util";

const editAdminFaqResolvers = async (
  _,
  { id, title, discription },
  { client }
) => {
  const result = await client.adminFaq.update({
    data: {
      title,
      discription,
    },
    where: {
      id,
    },
  });

  return {
    ok: true,
  };
};

export default {
  Mutation: {
    editAdminFaq: editAdminFaqResolvers,
  },
};
