import { gql } from "apollo-server-express";

export default gql`
  type Query {
    searchContestUser(
      email: String
      username: String
      phoneNumber: String
    ): [User]
  }
`;
