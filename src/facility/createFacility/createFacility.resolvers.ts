import { uploadToLocals } from "../../shared/shared.util";

const createFacilityResolvers = async (
  _,
  { title, discription, sortation, titleBannerImage },
  { client }
) => {
  let bannerImagePath = await uploadToLocals(titleBannerImage, sortation);

  const result = await client.facility.create({
    data: {
      title,
      discription,
      sortation,
      bannerImagePath: bannerImagePath[0],
    },
  });

  return {
    ok: true,
  };
};

export default {
  Mutation: {
    createFacility: createFacilityResolvers,
  },
};
