import * as AWS from "aws-sdk";
import { createWriteStream } from "fs";

AWS.config.update({
  credentials: {
    accessKeyId: process.env.AWS_KEY,
    secretAccessKey: process.env.AWS_SECRET_KEY,
  },
});

export const uploadToAWS = async (files, userId, folderName) => {
  const promises = [];
  for (let i = 0; i < files.length; i++) {
    promises.push(await uploadToS3(files[i], userId, folderName));
  }

  return promises.map((imagePath) => ({
    where: { imagePath },
    create: { imagePath },
  }));
};

export const uploadToS3 = async (file, userId, folderName) => {
  try {
    const { filename, mimeType, encoding, createReadStream } = await file;
    const readStream = createReadStream();
    const objectName = `${folderName}/${userId}-${Date.now()}-${filename}`;
    const { Location } = await new AWS.S3()
      .upload({
        Bucket: "playinus-bucket",
        Key: objectName,
        ACL: "public-read-write",
        Body: readStream,
      })
      .promise();

    return Location;
  } catch (e) {
    console.log(e);
  }
};

export const uploadToLocals = async (files, sortation) => {
  const promises = [];
  for (let i = 0; i < files.length; i++) {
    promises.push(await uploadToLocal(files[i], sortation));
  }
  return promises;
};

export const uploadToLocal = async (file, sortation) => {
  try {
    const { filename, createReadStream } = await file;
    const newFilename = `${Date.now()}-${filename}`;
    const readStream = createReadStream();
    const writeStream = createWriteStream(
      process.cwd() + "/uploads/" + sortation + "/" + newFilename
    );
    readStream.pipe(writeStream);

    return `http://localhost:4000/uploads/${sortation}/${newFilename}`;
  } catch (e) {
    console.log(e);
  }
};
