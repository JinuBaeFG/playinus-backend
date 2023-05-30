import { uploadToLocals } from "../../shared/shared.util";

const editAdminNoticeResolvers = async (
  _,
  { id, title, discription },
  { client }
) => {
  const result = await client.adminNotice.update({
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
    editAdminNotice: editAdminNoticeResolvers,
  },
};
