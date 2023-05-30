import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeReComments(id: Int!, offset: Int): [ReComment]
  }
`;
