import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeComment(id: String): Comment
  }
`;
