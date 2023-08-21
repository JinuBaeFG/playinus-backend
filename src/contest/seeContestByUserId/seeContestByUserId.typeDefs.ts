import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeContestByUserId(userId: String): [Contest]
  }
`;
