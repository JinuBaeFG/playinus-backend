import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeNoticeReComments(id: Int!, offset: Int): [NoticeReComment]
  }
`;
