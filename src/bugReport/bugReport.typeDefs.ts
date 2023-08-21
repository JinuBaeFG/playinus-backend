import { gql } from "apollo-server-express";

export default gql`
  type BugReport {
    id: String
    user: User
    reportTitle: String
    reportDiscription: String
    reportImage: [BugReportImage]
    createdAt: String
    updatedAt: String
  }

  type BugReportImage {
    id: String
    bugReport: BugReport
    imagePath: String
    createdAt: String
    updatedAt: String
  }
`;
