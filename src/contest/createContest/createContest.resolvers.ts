import client from "../../client";
import { uploadToLocals } from "../../shared/shared.util";

const createContestResolvers = async (
  _,
  {
    contestName,
    contestStartDate,
    contestEndDate,
    contestRecruitStart,
    contestRecruitEnd,
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
    contestHost,
    contestSponsorShip,
    contestSports,
    contestSportsDetail,
    contestDiscription,
    contestTerms,
    contestEntryFee,
    contestBanner,
    activeArea,
  },
  { loggedInUser }
) => {
  const date = new Date();
  const contestId = "CT" + date;
  let imagePath = [];
  if (contestBanner !== null && contestBanner !== undefined) {
    imagePath = await uploadToLocals(contestBanner, "Contest");
  }
  await client.contest.create({
    data: {
      contestId,
      contestName,
      contestStartDate,
      contestEndDate,
      contestRecruitStart,
      contestRecruitEnd,
      contestPlace: activeArea,
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
      contestHost,
      contestSponsorShip,
      contestSports,
      contestSportsDetail,
      contestDiscription,
      contestTerms,
      contestEntryFee,
      contestBanner: imagePath[0],
    },
  });

  return {
    ok: true,
  };
};

export default {
  Mutation: {
    createContest: createContestResolvers,
  },
};
