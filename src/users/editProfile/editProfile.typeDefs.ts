import { gql } from "apollo-server-express";

export default gql`
  type EditProfileResult {
    ok: Boolean!
    error: String
    id: Int!
  }
  type Mutation {
    editProfile(
      id: Int!
      username: String
      avatar: Upload
      gender: String
    ): EditProfileResult!
  }
`;
