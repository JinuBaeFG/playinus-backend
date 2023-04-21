import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeGroups(offset: Int!): [Group]
  }

  type GroupPresident {
    id: Int!
    user: User!
    createdAt: String!
    updatedAt: String!
  }
`;
