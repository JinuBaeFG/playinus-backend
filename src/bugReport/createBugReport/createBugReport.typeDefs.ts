import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    createBugReport(
      reportTitle: String
      reportDiscription: String
      bugReportImage: [Upload]
    ): MutationResponse
  }
`;
