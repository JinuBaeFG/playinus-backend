import { gql } from "apollo-server-express";

export default gql`
  type Config {
    id: Int
    privacyTerms: String
    gpsTerms: String
    useTerms: String
    createdAt: String
    updatedAt: String
  }
`;
