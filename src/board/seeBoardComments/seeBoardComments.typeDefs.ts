import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeBoardComments(id: String!, offset: Int): [BoardComment]
  }
`;
