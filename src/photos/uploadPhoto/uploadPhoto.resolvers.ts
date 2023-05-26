import client from "../../client";
import { uploadToAWS } from "../../shared/shared.util";
import { protectedResolver } from "../../users/users.utils";

const uploadPhotoResolvers = async (
  _,
  { files, caption, sortation, publicLevel, sportsEvent, feedCategory },
  { loggedInUser }
) => {
  let imagePath;

  if (files !== null && files !== undefined) {
    imagePath = await uploadToAWS(files, loggedInUser.id, sortation);
  }

  return client.photo.create({
    data: {
      ...(imagePath !== null &&
        imagePath !== undefined && {
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
          id: loggedInUser.id,
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
