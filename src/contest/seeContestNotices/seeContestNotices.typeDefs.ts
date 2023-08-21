import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeContestNotices(contestId: String): [ContestNotice]
  }
`;
