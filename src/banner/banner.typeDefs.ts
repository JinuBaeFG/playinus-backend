import { gql } from "apollo-server-express";

export default gql`
  type Banner {
    id: Int
    title: String
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
    areaLatitude: String
    areaLongtitude: String
    sportsEvent: String
    sortation: String
    bannerImagePath: String
    titleBannerImage: Upload
    createdAt: String
    updatedAt: String
  }
`;
