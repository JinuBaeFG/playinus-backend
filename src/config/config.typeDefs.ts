import { gql } from "apollo-server-express";

export default gql`
  type Config {
    id: Int
    privacyTerms: String
    gpsTerms: String
    createdAt: String
    updatedAt: String
  }
`;
