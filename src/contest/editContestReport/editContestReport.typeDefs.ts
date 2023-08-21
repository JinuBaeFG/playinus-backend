import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    editContestReport(
      id: String
      contestId: String
      reportTitle: String
      reportDiscription: String
    ): MutationResponse
  }
`;
