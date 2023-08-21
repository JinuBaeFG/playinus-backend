import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    editBoardComment(id: String!, payload: String!): MutationResponse!
  }
`;
