import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seePhotoLikes(id: String!): [User]
  }
`;
