import { gql } from "apollo-server-express";

export default gql`
  type Group {
    id: Int!
    name: String
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
    addAddr: String
    areaLatitude: String
    areaLongitude: String
    sportsEvent: String
    groupImage: [GroupImage]
    groupPresident: GroupPresident
    users: [User]
    userCount: Int
    maxMember: String
    facility: [Facility]
    groupInfo: [GroupInfo]
    groupTag: [GroupTag]
    groupJoinRequest: [GroupJoinRequest]
    createdAt: String!
    updatedAt: String!
    isJoin: Boolean
    isJoining: Boolean
    isPresident: Boolean
  }

  type GroupImage {
    id: Int!
    imagePath: String
    groupId: Group
    createdAt: String!
    updatedAt: String!
  }

  type GroupPresident {
    id: Int!
    user: User!
    createdAt: String!
    updatedAt: String!
  }

  type GroupInfo {
    id: Int!
    group: Group
    discription: String
    awardDate: String
    createdAt: String!
    updatedAt: String!
  }

  type GroupTag {
    id: Int!
    name: String
    imagePath: String
    group: [Group]
    createdAt: String!
    updatedAt: String!
  }

  type GroupJoinRequest {
    id: Int!
    group: Group
    user: User
    createdAt: String!
    updatedAt: String!
  }

  type GroupImage {
    id: Int!
    imagePath: String
    groupId: Group
    createdAt: String!
    updatedAt: String!
  }
`;
