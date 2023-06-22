import client from "../../client";

const editContesttResolvers = async (
  _,
  {
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
    contestEntryFee,
  }
) => {
  await client.contest.update({
    where: {
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
      contestEntryFee,
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
