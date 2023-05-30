import { group, time } from "console";
import { uploadToAWS, uploadToS3 } from "../../shared/shared.util";
import { protectedResolver } from "../../users/users.utils";

const editGroupResolver = async (
  _,
  {
    id,
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
    groupPresident,
  },
  { loggedInUser, client }
) => {
  let imagePath;
  if (file !== undefined && file !== null && file.length > 0) {
    imagePath = await uploadToAWS(file, loggedInUser.id, "Group");
  }

  // 그룹 대표 업데이트
  await client.groupPresident.update({
    where: {
      id: groupPresident.id,
    },
    data: {
      user: {
        connect: {
          id: groupPresident.user.id,
        },
      },
    },
  });

  // 그룹 태그 업데이트 - 시ㄱ
  // 그룹 태그 업데이트 - 수정하는 그룹의 전체 태그 비활성화
  const tagResult = await client.groupTag.findMany({
    where: {
      group: {
        some: {
          id,
        },
      },
    },
  });

  let tagWhere = [];
  tagResult.map((item) => {
    tagWhere.push({
      id: item.id,
    });
  });

  await client.group.update({
    where: {
      id,
    },
    data: {
      groupTag: {
        disconnect: tagWhere,
      },
    },
  });
  // 그룹 태그 업데이트 - 수정하는 그룹의 전체 태그 비활성화
  let groupTagArr;
  if (groupTag !== undefined && groupTag.length > 0) {
    groupTagArr = groupTag.map((item) => ({
      where: { id: item.id },
      create: {
        name: item.name,
        imagePath: item.imagePath,
      },
    }));
  }
  // 그룹 태그 업데이트 - 끝
  // 그룹 이력 업데이트 - 시작
  const setGroupInfo = async (groupInfo) => {
    const promises = [];

    groupInfo.map(async (item) => {
      // 삭제 처리될 태그 삭제 처리
      if (item.isDelete) {
        await client.group.update({
          where: {
            id,
          },
          data: {
            groupInfo: {
              disconnect: {
                id: item.id,
              },
            },
          },
        });
      }

      if (item.isNew) {
        promises.push(item);
      }
    });

    return promises.map((item) => ({
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
  };
  let groupActiveInfo = await setGroupInfo(groupInfo);
  // 그룹 이력 업데이트 - 끝

  const updateCheck = await client.group.update({
    where: {
      id,
    },
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
      activeArea,
      address,
      addrRoad,
      areaLatitude,
      areaLongitude,
      sportsEvent,
      maxMember: maxMember.toString(),
      ...(imagePath !== undefined &&
        imagePath.length > 0 &&
        imagePath !== null && {
          imagePath: {
            connectOrCreate: imagePath,
          },
        }),
      ...(groupTag !== undefined &&
        groupTag.length > 0 && {
          groupTag: {
            connectOrCreate: groupTagArr,
          },
        }),
      ...(groupActiveInfo !== undefined &&
        groupActiveInfo.length > 0 && {
          groupInfo: {
            connectOrCreate: groupActiveInfo,
          },
        }),
    },
  });
  if (!updateCheck) {
    return { ok: false, error: "그룹을 수정하지 못했습니다." };
  } else {
    return {
      ok: true,
    };
  }
};

export default {
  Mutation: {
    editGroup: protectedResolver(editGroupResolver),
  },
};
