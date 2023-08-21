import { gql } from "apollo-server-express";

export default gql`
  type Notice {
    id: String
    user: User!
    group: Group
    tutor: Tutor
    title: String
    discription: String
    sortation: String
    likes: Int!
    hits: Int!
    isMine: Boolean!
    isLiked: Boolean!
    noticeCommentCount: Int!
    noticeComments: [NoticeComment]
    createdAt: String!
    updatedAt: String!
  }
`;
