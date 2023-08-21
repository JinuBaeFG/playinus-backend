import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    boardToggleLike(id: String!): MutationResponse!
  }
`;
