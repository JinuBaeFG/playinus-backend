import client from "../../client";
import { uploadToLocals } from "../../shared/shared.util";

const editContesttResolvers = async (
  _,
  {
    id,
    contestId,
    contestName,
    contestStartDate,
    contestEndDate,
    contestRecruitStart,
    contestRecruitEnd,
    contestPlace,
    buildingNumber,
    dongEubMyunName,
    gusiName,
    riName,
    roadName,
    sidoName,
    zipcode,
    areaLatitude,
    areaLongitude,
    contestPlaceAddress,
    contestStadium,
    contestSports,
    contestSportsDetail,
    contestDiscription,
    contestTerms,
    contestAwardDetails,
    contestEntryFee,
    contestBanner,
    contestRecruitNumber,
  }
) => {
  let imagePath = [];
  if (contestBanner !== null && contestBanner !== undefined) {
    imagePath = await uploadToLocals(contestBanner, "Contest");
  }

  const update = await client.contest.update({
    where: {
      id,
      contestId,
    },
    data: {
      contestName,
      contestStartDate,
      contestEndDate,
      contestRecruitStart,
      contestRecruitEnd,
      contestPlace,
      buildingNumber,
      dongEubMyunName,
      gusiName,
      riName,
      roadName,
      sidoName,
      zipcode,
      areaLatitude,
      areaLongitude,
      contestPlaceAddress,
      contestStadium,
      contestSports,
      contestSportsDetail,
      contestDiscription,
      contestTerms,
      contestAwardDetails,
      contestEntryFee,
      contestRecruitNumber,
      ...(contestBanner !== null &&
        contestBanner !== undefined && {
          contestBanner: imagePath[0],
        }),
    },
  });

  return {
    ok: true,
  };
};

export default {
  Mutation: {
    editContest: editContesttResolvers,
  },
};
