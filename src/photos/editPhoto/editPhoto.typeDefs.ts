import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    editPhoto(id: String!, caption: String!): MutationResponse!
  }
`;
