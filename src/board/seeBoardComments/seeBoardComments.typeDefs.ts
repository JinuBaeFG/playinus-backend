import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeBoardComments(id: Int!, offset: Int): [BoardComment]
  }
`;
