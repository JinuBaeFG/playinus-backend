import client from "../../client";
import { uploadToAWS } from "../../shared/shared.util";
import { protectedResolver } from "../../users/users.utils";

const uploadPhotoResolvers = async (
  _,
  { files, caption, sortation, publicLevel, sportsEvent, feedCategory },
  { loggedInUser }
) => {
  let imagePath;
  if (files) {
    imagePath = await uploadToAWS(files, 0, sortation);
  }

  return client.photo.create({
    data: {
      ...(imagePath.length > 0 && {
        feedUpload: {
          connectOrCreate: imagePath,
        },
      }),
      caption,
      publicLevel,
      sportsEvent,
      feedCategory,
      user: {
        connect: {
          id: 1,
        },
      },
    },
  });
};

export default {
  Mutation: {
    uploadPhoto: uploadPhotoResolvers,
  },
};
