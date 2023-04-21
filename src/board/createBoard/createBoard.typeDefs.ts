import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    createBoard(
      id: Int
      title: String
      discription: String
      sortation: String
    ): Board
  }
`;
