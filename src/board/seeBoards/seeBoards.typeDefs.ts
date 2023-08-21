import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeBoards(id: String, sortation: String, offset: Int): [Board]
  }
`;
