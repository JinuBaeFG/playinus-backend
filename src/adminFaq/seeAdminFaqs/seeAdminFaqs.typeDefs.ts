import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeAdminFaqs(offset: Int): [AdminFaq]
  }
`;
