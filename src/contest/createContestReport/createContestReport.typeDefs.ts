import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    createContestReport(
      contestId: String
      reportType: String
      reportTitle: String
      reportDiscription: String
    ): MutationResponse
  }
`;
