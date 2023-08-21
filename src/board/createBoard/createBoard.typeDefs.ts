import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    createBoard(
      id: String
      title: String
      discription: String
      sortation: String
    ): Board
  }
`;
