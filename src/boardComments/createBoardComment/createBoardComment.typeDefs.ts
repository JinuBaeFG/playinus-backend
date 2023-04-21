import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    createBoardComment(boardId: Int!, payload: String!): MutationResponse!
  }
`;
