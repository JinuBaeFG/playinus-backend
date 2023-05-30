import { gql } from "apollo-server-express";

export default gql`
  type CreateAccountResult {
    ok: Boolean!
    error: String
  }
  type Mutation {
    createAccount(
      username: String!
      email: String!
      password: String!
      phoneNumber: String!
      interlock: String
      uid: String
      privacyAccess: Boolean
      usetermAccess: Boolean
    ): CreateAccountResult!
  }
`;
