import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    createBoardReComment(
      boardCommentId: Int!
      payload: String!
    ): MutationResponse!
  }
`;
