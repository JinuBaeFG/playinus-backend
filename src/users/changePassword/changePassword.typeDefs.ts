import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    changePassword(id: Int!, password: String!): MutationResponse
  }
`;
