import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    joinGroup(id: String!): MutationResponse!
  }
`;
