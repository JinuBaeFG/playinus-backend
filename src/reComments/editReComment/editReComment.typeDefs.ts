import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    editReComment(id: String!, payload: String!): MutationResponse!
  }
`;
