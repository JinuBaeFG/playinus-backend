import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeNoticeComment(id: Int): NoticeComment
  }
`;
