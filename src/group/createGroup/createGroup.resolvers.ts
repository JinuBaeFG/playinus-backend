import { group } from "console";
import { uploadToAWS, uploadToS3 } from "../../shared/shared.util";
import { protectedResolver } from "../../users/users.utils";

const createGroupResolver = async (
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
    sportsEvent,
    file,
    maxMember,
    groupInfo,
    groupTag,
  },
  { loggedInUser, client }
) => {
  let imagePath;
  if (file !== undefined && file.length > 0) {
    imagePath = await uploadToAWS(file, loggedInUser.id, "Group");
  }
  console.log(groupInfo.length);
  let groupActiveInfo;
  if (groupInfo !== undefined && groupInfo.length > 0) {
    groupActiveInfo = groupInfo.map((item) => ({
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

  let groupTagArr;
  if (groupTag !== undefined && groupTag.length > 0) {
    groupTagArr = groupTag.map((item) => ({
      where: { name: item.name },
      create: {
        name: item.name,
        imagePath: item.imagePath,
      },
    }));
  }

  const createCheck = await client.group.create({
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
      sportsEvent,
      maxMember: maxMember.toString(),
      users: {
        connect: {
          id: loggedInUser.id,
        },
      },
      groupPresident: {
        connectOrCreate: {
          where: { userId: loggedInUser.id },
          create: { userId: loggedInUser.id },
        },
      },
      ...(imagePath !== undefined &&
        imagePath.length > 0 && {
          imagePath: {
            connectOrCreate: imagePath,
          },
        }),
      ...(groupInfo !== undefined &&
        groupInfo.length > 0 && {
          groupInfo: {
            connectOrCreate: groupActiveInfo,
          },
        }),
      ...(groupTag !== undefined &&
        groupTag.length > 0 && {
          groupTag: {
            connectOrCreate: groupTagArr,
          },
        }),
    },
  });

  if (!createCheck) {
    return { ok: false, error: "그룹을 만들지 못했습니다." };
  } else {
    return {
      ok: true,
    };
  }
};

export default {
  Mutation: {
    createGroup: protectedResolver(createGroupResolver),
  },
};
