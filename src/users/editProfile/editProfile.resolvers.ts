import * as bcrypt from "bcrypt";
import { protectedResolver } from "../users.utils";
import { uploadToS3 } from "../../shared/shared.util";

const resolversFn = async (
  _,
  { id, username, avatar, gender },
  { loggedInUser, client }
) => {
  let avatarUrl = null;
  if (avatar) {
    avatarUrl = await uploadToS3(avatar, loggedInUser.id, "avatars");
    /*const { filename, createReadStream } = await avatar;
    const newFilename = `${loggedInUser.id}-${Date.now()}-${filename}`;
    const readStream = createReadStream();
    const writeStream = createWriteStream(
      process.cwd() + "/uploads/" + newFilename
    );
    readStream.pipe(writeStream);
    avatarUrl = `http://localhost:4000/static/${newFilename}`;*/
  }

  const updateUser = await client.user.update({
    where: {
      id: loggedInUser.id,
    },
    data: {
      id,
      username,
      avatar,
      gender,
      ...(avatarUrl && { avatar: avatarUrl }),
    },
  });

  if (updateUser.id) {
    return {
      id: loggedInUser.id,
      ok: true,
    };
  } else {
    return {
      ok: false,
      error: "Could not Edit Profile.",
    };
  }
};

export default {
  Mutation: {
    editProfile: protectedResolver(resolversFn),
  },
};
