import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeAdminNotices(offset: Int): [AdminNotice]
  }
`;
