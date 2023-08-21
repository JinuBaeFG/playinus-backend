import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    editComment(id: String!, payload: String!): MutationResponse!
  }
`;
