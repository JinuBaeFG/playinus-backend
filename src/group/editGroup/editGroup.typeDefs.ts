import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    editGroup(
      id: Int
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
      groupPresident: GroupPresidentInput
    ): MutationResponse!
  }

  input GroupInfoInput {
    id: Int
    discription: String
    awardDate: String
    isNew: Boolean
    isDelete: Boolean
  }

  input GroupTagInput {
    id: Int
    name: String
    isUse: Boolean
  }

  input GroupPresidentInput {
    id: Int
    user: UserInput
  }

  input UserInput {
    id: Int
    username: String
  }
`;
