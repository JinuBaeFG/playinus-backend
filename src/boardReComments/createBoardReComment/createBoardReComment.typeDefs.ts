import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    createBoardReComment(
      boardCommentId: String!
      payload: String!
    ): MutationResponse!
  }
`;
