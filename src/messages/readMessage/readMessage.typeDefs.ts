import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    readMessage(id: String!): MutationResponse!
  }
`;
