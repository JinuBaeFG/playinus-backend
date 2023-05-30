import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    editReComment(id: Int!, payload: String!): MutationResponse!
  }
`;
