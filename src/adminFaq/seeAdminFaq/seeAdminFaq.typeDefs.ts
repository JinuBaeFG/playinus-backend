import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeAdminFaq(id: String): AdminFaq
  }
`;
