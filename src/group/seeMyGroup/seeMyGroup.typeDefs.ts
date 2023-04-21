import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeMyGroup(offset: Int!): [MyGroup]
  }

  type MyGroup {
    id: Int
    name: String
    groupImage: [GroupImage]
  }
`;
