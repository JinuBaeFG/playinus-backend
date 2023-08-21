import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeReComments(id: String!, offset: Int): [ReComment]
  }
`;
