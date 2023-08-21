import { gql } from "apollo-server-express";

export default gql`
  type Query {
    checkJoinContest(contestId: String, userId: String): ContestUser
  }
`;
