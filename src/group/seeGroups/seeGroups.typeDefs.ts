import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeGroups(offset: Int!, sportsEvent: String): [Group]
  }

  type GroupPresident {
    id: String!
    user: User!
    createdAt: String!
    updatedAt: String!
  }
`;
