import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    editContest(
      contestId: String
      contestName: String
      contestStartDate: String
      contestEndDate: String
      contestRecruitStart: String
      contestRecruitEnd: String
      contestPlace: String
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
      contestSports: String
      contestSportsDetail: String
      contestDiscription: String
      contestTerms: String
      contestEntryFee: String
    ): MutationResponse
  }
`;
