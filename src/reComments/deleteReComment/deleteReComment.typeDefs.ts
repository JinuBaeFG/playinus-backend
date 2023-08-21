import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    deleteReComment(id: String!): MutationResponse!
  }
`;
