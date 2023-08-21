import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    editConfig(
      id: String
      privacyTerms: String
      gpsTerms: String
      useTerms: String
      businessInfo: String
    ): MutationResponse
  }
`;
