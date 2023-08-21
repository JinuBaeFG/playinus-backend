import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeUserList(contestId: String): [ContestUser]
  }
`;
