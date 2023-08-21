import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    joinDenied(id: String!, groupId: String!): MutationResponse!
  }
`;
