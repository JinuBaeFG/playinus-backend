import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeUserFeed(offset: Int!, id: String): [Photo]
  }
`;
