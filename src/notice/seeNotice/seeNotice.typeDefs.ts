import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeNotice(id: String): Notice
  }
`;
