import { gql } from "apollo-server-express";

export default gql`
  type Contest {
    id: Int
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
    areaLongtitude: String
    contestPlaceAddress: String
    contestStadium: String
    contestHost: String
    contestSponsorShip: String
    contestSports: String
    contestSportsDetail: String
    contestDiscription: String
    contestTerms: String
    contestEntryFee: String
    contestStatus: String
    contestPaymentMethod: String
    createdAt: String
    updatedAt: String
    contestBanner: String
    contestUser: [ContestUser]
    contestNotice: [ContestNotice]
    contestReport: [ContestReport]
  }

  type ContestUser {
    id: Int
    contest: Contest
    user: User
    teamName: String
    userAge: Int
    userGender: String
    userTier: String
    contestSports: String
    contestPaymentStatus: String
    createdAt: String
    updatedAt: String
  }

  type ContestNotice {
    id: Int
    contest: Contest
    noticeTitle: String
    noticeDiscription: String
    createdAt: String
    updatedAt: String
  }

  type ContestReport {
    id: Int
    contest: Contest
    reportType: String
    reportTitle: String
    reportDiscription: String
    createdAt: String
    updatedAt: String
  }
`;
