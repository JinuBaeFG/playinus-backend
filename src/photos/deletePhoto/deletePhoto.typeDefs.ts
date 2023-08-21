import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    deletePhoto(id: String!): MutationResponse!
  }
`;
