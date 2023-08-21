import { uploadToLocals } from "../../shared/shared.util";

const createBannerResolvers = async (
  _,
  { title, discription, sortation, titleBannerImage },
  { client }
) => {
  let bannerImagePath = [];
  if (titleBannerImage != undefined && titleBannerImage != null) {
    bannerImagePath = await uploadToLocals(titleBannerImage, sortation);
  }

  const result = await client.banner.create({
    data: {
      title,
      discription,
      sortation,
      ...(titleBannerImage !== null &&
        titleBannerImage !== undefined && {
          bannerImagePath: bannerImagePath[0],
        }),
    },
  });

  return {
    ok: true,
  };
};

export default {
  Mutation: {
    createBanner: createBannerResolvers,
  },
};
