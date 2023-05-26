import { uploadToAWS, uploadToLocals } from "../../shared/shared.util";

const createFacilityResolvers = async (
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
    detailAddress,
    operTime,
    facilitySports,
    facilityImage,
    facilityInfo,
    facilityTag,
  },
  { client }
) => {
  let facilityImages;
  if (facilityImage !== undefined && facilityImage !== null) {
    facilityImages = await uploadToAWS(facilityImage, "", "facility");
  }

  let facilitySportArr;
  if (facilitySports !== undefined && facilitySports !== null) {
    facilitySportArr = facilitySports.map((item) => ({
      where: {
        name: item.name,
      },
      create: {
        name: item.name,
      },
    }));
  }

  let facilityInfoArr;
  if (facilityInfo !== undefined && facilityInfo !== null) {
    facilityInfoArr = facilityInfo.map((item) => ({
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

  let facilityTagArr;
  if (facilityTag !== undefined && facilityTag !== null) {
    facilityTagArr = facilityTag.map((item) => ({
      where: { name: item.name },
      create: {
        name: item.name,
        imagePath: item.imagePath,
      },
    }));
  }

  const result = await client.facility.create({
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
      detailAddress,
      operTime,
      ...(facilityImages !== null &&
        facilityImages !== undefined && {
          facilityImage: {
            connectOrCreate: facilityImages,
          },
        }),
      ...(facilitySports !== null &&
        facilitySports !== undefined && {
          facilitySports: {
            connectOrCreate: facilitySportArr,
          },
        }),
      ...(facilityInfo !== null &&
        facilityInfo !== undefined && {
          facilityInfo: {
            connectOrCreate: facilityInfoArr,
          },
        }),
      ...(facilityTag !== null &&
        facilityTag !== undefined && {
          facilityTag: {
            connectOrCreate: facilityTagArr,
          },
        }),
    },
  });

  if (result) {
    return {
      ok: true,
    };
  } else {
    return {
      ok: false,
      error: "못만듬",
    };
  }
};

export default {
  Mutation: {
    createFacility: createFacilityResolvers,
  },
};
