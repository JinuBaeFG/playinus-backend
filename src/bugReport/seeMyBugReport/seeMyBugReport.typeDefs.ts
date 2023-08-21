import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeMyBugReport(id: String): BugReport
  }
`;
