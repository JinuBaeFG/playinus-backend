import { gql } from "apollo-server-express";

export default gql`
  type LoginResult {
    ok: Boolean!
    token: String
    error: String
  }

  type Mutation {
    adminLogin(id: String!, password: String!): LoginResult!
  }
`;
