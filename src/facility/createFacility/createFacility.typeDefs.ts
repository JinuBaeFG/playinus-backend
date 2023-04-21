import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    createFacility(
      name: String
      discription: String
      activeArea: String
      address: String
      addrRoad: String
      addAddr: String
      zipcode: String
      areaLatitude: String
      areaLongitude: String
      operTime: String
      facilitySports: [FacilitySportsInput]
      facilityInfo: [FacilityInfoInput]
      facilityTag: [FacilityTagInput]
    ): MutationResponse
  }

  input FacilityInfoInput {
    discription: String
    awardDate: String
  }

  input FacilitySportsInput {
    name: String
  }

  input FacilityTagInput {
    name: String
    imagePath: String
    isUse: Boolean
    isCustom: Boolean
  }
`;
