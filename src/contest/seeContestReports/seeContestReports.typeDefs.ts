import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeContestReports(contestId: String): [ContestNotice]
  }
`;
