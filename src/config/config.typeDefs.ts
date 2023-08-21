import { gql } from "apollo-server-express";

export default gql`
  type Config {
    id: String
    privacyTerms: String
    gpsTerms: String
    useTerms: String
    businessInfo: String
    createdAt: String
    updatedAt: String
  }
`;
