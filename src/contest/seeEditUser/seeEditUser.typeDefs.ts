import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeEditContestUser(id: String): ContestUser
  }
`;
