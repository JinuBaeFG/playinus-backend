import { gql } from "apollo-server-express";

export default gql`
  type NoticeComment {
    id: String!
    user: User!
    notice: Notice!
    payload: String!
    isMine: Boolean!
    noticeReComments: [NoticeReComment]
    noticeReCommentCount: Int
    createdAt: String!
    updatedAt: String!
  }
`;
