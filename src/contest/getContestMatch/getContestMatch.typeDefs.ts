import { gql } from "apollo-server-express";

export default gql`
  type Query {
    getContestMatch(contestId: String): Contest
  }
`;
