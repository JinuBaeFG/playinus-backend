import { gql } from "apollo-server-express";

export default gql`
  type NoticeReComment {
    id: Int!
    user: User!
    noticeComment: NoticeComment!
    payload: String!
    isMine: Boolean!
    createdAt: String!
    updatedAt: String!
  }
`;
