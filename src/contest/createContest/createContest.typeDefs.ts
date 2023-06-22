import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    createContest(
      contestName: String
      contestStartDate: String
      contestEndDate: String
      contestRecruitStart: String
      contestRecruitEnd: String
      buildingNumber: String
      dongEubMyunName: String
      gusiName: String
      riName: String
      roadName: String
      sidoName: String
      zipcode: String
      areaLatitude: String
      areaLongitude: String
      contestPlaceAddress: String
      contestStadium: String
      contestHost: String
      contestSponsorShip: String
      contestSports: String
      contestSportsDetail: String
      contestDiscription: String
      contestTerms: String
      contestEntryFee: String
      address: String
      addrRoad: String
      activeArea: String
      contestBanner: Upload
    ): MutationResponse
  }
`;
