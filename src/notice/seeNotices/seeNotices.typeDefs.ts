import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeNotices(id: String, sortation: String, offset: Int): [Notice]
  }
`;
