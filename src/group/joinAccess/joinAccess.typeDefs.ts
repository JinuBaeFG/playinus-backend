import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    joinAccess(
      id: String!
      userId: String!
      groupId: String!
      username: String
    ): MutationResponse!
  }
`;
