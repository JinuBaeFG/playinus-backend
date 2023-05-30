import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    createGroup(
      name: String!
      discription: String
      sidoName: String
      gusiName: String
      dongEubMyunName: String
      riName: String
      roadName: String
      buildingNumber: String
      zipcode: String
      activeArea: String
      address: String
      addrRoad: String
      areaLatitude: String
      areaLongitude: String
      sportsEvent: String
      file: [Upload]
      maxMember: String
      groupInfo: [GroupInfoInput]
      groupTag: [GroupTagInput]
    ): Group
  }

  input GroupInfoInput {
    discription: String
    awardDate: String
    isNew: Boolean
    isDelete: Boolean
  }

  input GroupTagInput {
    id: Int
    name: String
  }
`;
