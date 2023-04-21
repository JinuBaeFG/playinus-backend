import { uploadToLocals } from "../../shared/shared.util";

const createAdminNoticeResolvers = async (
  _,
  { title, discription },
  { client }
) => {
  const result = await client.adminNotice.create({
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
    createAdminNotice: createAdminNoticeResolvers,
  },
};
