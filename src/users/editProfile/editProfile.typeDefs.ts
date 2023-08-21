import { gql } from "apollo-server-express";

export default gql`
  type EditProfileResult {
    ok: Boolean!
    error: String
    id: String!
  }
  type Mutation {
    editProfile(
      id: String!
      username: String
      avatar: Upload
      gender: String
    ): EditProfileResult!
  }
`;
