import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeBoards(id: Int, sortation: String, offset: Int): [Board]
  }
`;
