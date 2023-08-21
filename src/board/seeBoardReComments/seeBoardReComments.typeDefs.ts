import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeBoardReComments(id: String!, offset: Int): [BoardReComment]
  }
`;
