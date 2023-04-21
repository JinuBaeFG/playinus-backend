import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    editConfig(
      id: Int
      privacyTerms: String
      gpsTerms: String
    ): MutationResponse
  }
`;
