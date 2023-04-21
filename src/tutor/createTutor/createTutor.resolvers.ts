import { group } from "console";
import { uploadToAWS, uploadToS3 } from "../../shared/shared.util";
import { protectedResolver } from "../../users/users.utils";

const createTutorResolver = async (
  _,
  {
    name,
    discription,
    sidoName,
    gusiName,
    dongEubMyunName,
    riName,
    roadName,
    buildingNumber,
    zipcode,
    activeArea,
    address,
    addrRoad,
    areaLatitude,
    areaLongitude,
    tutorSportsEvent,
    file,
    tutorInfo,
    tutorTag,
    group,
  },
  { loggedInUser, client }
) => {
  let imagePath;
  if (file !== undefined && file.length > 0) {
    imagePath = await uploadToAWS(file, loggedInUser.id, "Tutor");
  }

  let tutorActiveInfo;
  if (tutorInfo !== undefined && tutorInfo.length > 0) {
    tutorActiveInfo = tutorInfo.map((item) => ({
      where: {
        discription_awardDate: {
          discription: item.discription,
          awardDate: item.awardDate,
        },
      },
      create: {
        discription: item.discription,
        awardDate: item.awardDate,
      },
    }));
  }

  let tutorTagArr;
  if (tutorTag !== undefined && tutorTag.length > 0) {
    tutorTagArr = tutorTag.map((item) => ({
      where: { name: item.name },
      create: {
        name: item.name,
        imagePath: item.imagePath,
      },
    }));
  }

  let tutorSportsEventArr;
  if (tutorSportsEvent !== undefined && tutorSportsEvent.length > 0) {
    tutorSportsEventArr = tutorSportsEvent.map((item) => ({
      where: {
        id: item.id,
      },
      create: {
        id: item.id,
        name: item.name,
      },
    }));
  }

  let groupArr;
  if (group !== undefined && group.length > 0) {
    groupArr = group.map((item) => ({
      id: item.id,
    }));
  }

  const createCheck = await client.tutor.create({
    data: {
      name,
      discription,
      sidoName,
      gusiName,
      dongEubMyunName,
      riName,
      roadName,
      buildingNumber,
      zipcode,
      activeArea: dongEubMyunName,
      address,
      addrRoad,
      areaLatitude,
      areaLongitude,
      ...(tutorSportsEvent !== undefined &&
        tutorSportsEvent.length > 0 && {
          tutorSportsEvent: {
            connectOrCreate: tutorSportsEventArr,
          },
        }),
      user: {
        connect: {
          id: loggedInUser.id,
        },
      },
      ...(imagePath !== undefined &&
        imagePath.length > 0 && {
          imagePath: {
            connectOrCreate: imagePath,
          },
        }),
      ...(tutorInfo !== undefined &&
        tutorInfo.length > 0 && {
          tutorInfo: {
            connectOrCreate: tutorActiveInfo,
          },
        }),
      ...(tutorTag !== undefined &&
        tutorTag.length > 0 && {
          tutorTag: {
            connectOrCreate: tutorTagArr,
          },
        }),
      ...(group !== undefined &&
        group.length > 0 && {
          group: {
            connect: groupArr,
          },
        }),
    },
  });

  if (!createCheck) {
    return { ok: false, error: "튜터를 생성하지 못했습니다." };
  } else {
    return {
      ok: true,
    };
  }
};

export default {
  Mutation: {
    createTutor: protectedResolver(createTutorResolver),
  },
};
