import { gql } from "apollo-server-express";

export default gql`
  type Facility {
    id: Int
    name: String
    discription: String
    sidoName: String
    gusiName: String
    dongEubMyunName: String
    riName: String
    roadName: String
    buildingNumber: Int
    zipcode: Int
    activeArea: String
    address: String
    addrRoad: String
    detailAddress: String
    areaLatitude: String
    areaLongitude: String
    operTime: String
    group: [Group]
    tutor: [Tutor]
    facilityImage: [FacilityImage]
    facilitySports: [FacilitySports]
    facilityInfo: [FacilityInfo]
    facilityTag: [FacilityTag]
    createdAt: String
    updatedAt: String
  }

  type FacilityImage {
    id: Int!
    facilityId: Facility
    imagePath: String
    createdAt: String!
    updatedAt: String!
  }

  type FacilityInfo {
    id: Int
    facility: [Facility]
    facilityId: Int
    discription: String
    awardDate: String
    createdAt: String
    updatedAt: String
  }

  type FacilityTag {
    id: Int
    name: String
    imagePath: String
    isUse: Boolean
    isCustom: Boolean
    facility: [Facility]
    createdAt: String
    updatedAt: String
  }

  type FacilitySports {
    id: Int
    name: String
    facility: [Facility]
    createdAt: String
    updatedAt: String
  }
`;
