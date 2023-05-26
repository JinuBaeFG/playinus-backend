import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeNewsBanner(offset: Int, sortation: String): [Banner]
  }
`;
