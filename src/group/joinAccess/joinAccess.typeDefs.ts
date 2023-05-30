import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    joinAccess(
      id: Int!
      userId: Int!
      groupId: Int!
      username: String
    ): MutationResponse!
  }
`;
