import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    toggleOk(id: String!): MutationResponse!
  }
`;
