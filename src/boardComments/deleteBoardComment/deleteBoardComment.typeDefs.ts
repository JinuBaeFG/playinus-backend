import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    deleteBoardComment(id: String!): MutationResponse!
  }
`;
