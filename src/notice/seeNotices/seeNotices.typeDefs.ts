import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeNotices(id: Int, sortation: String, offset: Int): [Notice]
  }
`;
