import { uploadToLocals } from "../../shared/shared.util";

const editBannerResolvers = async (
  _,
  { id, title, discription, sortation, titleBannerImage },
  { client }
) => {
  let bannerImagePath;
  if (titleBannerImage) {
    bannerImagePath = await uploadToLocals(titleBannerImage, sortation);
  }

  const result = await client.banner.update({
    data: {
      title,
      discription,
      sortation,
      bannerImagePath: bannerImagePath[0],
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
    editBanner: editBannerResolvers,
  },
};
