import { gql } from "apollo-server-express";

export default gql`
  type BugReport {
    id: Int
    user: User
    reportTitle: String
    reportDiscription: String
    reportImage: [BugReportImage]
    createdAt: String
    updatedAt: String
  }

  type BugReportImage {
    id: Int
    bugReport: BugReport
    imagePath: String
    createdAt: String
    updatedAt: String
  }
`;
