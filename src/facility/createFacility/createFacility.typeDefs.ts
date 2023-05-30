import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    createFacility(
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
      detailAddress: String
      operTime: String
      facilitySports: [FacilitySportsInput]
      facilityImage: [Upload]
      facilityInfo: [FacilityInfoInput]
      facilityTag: [FacilityTagInput]
    ): MutationResponse
  }

  input FacilityInfoInput {
    discription: String
    awardDate: String
    isNew: Boolean
    isDelete: Boolean
  }

  input FacilitySportsInput {
    id: Int
    name: String
    imagePath: String
    isChecked: Boolean
  }

  input FacilityTagInput {
    id: Int
    name: String
    imagePath: String
    isUse: Boolean
    isCustom: Boolean
  }
`;
