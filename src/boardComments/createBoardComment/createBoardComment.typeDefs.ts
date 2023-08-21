import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    createBoardComment(boardId: String!, payload: String!): MutationResponse!
  }
`;
