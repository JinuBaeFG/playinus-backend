import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeNoticeComments(id: String!, offset: Int): [NoticeComment]
  }
`;
