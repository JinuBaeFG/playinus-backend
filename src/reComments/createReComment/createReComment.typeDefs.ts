import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    createReComment(commentId: String!, payload: String!): MutationResponse!
  }
`;
