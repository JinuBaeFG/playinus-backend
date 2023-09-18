import { gql } from "apollo-server-express";

export default gql`
  type Query {
    findAccountFromEmail(email: String): User
  }
`;
