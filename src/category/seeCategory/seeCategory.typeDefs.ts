import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeCategory(offset: Int): [Category]
  }
`;
