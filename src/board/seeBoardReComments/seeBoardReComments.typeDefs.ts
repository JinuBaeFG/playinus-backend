import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeBoardReComments(id: Int!, offset: Int): [BoardReComment]
  }
`;
