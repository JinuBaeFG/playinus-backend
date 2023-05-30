import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeBoardComment(id: Int): BoardComment
  }
`;
