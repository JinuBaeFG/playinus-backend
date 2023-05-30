import { gql } from "apollo-server-express";

export default gql`
  type Report {
    id: Int
    userId: Int
    user: User
    photoId: Int
    photo: Photo
    boardId: Int
    board: Board
    noticeId: Int
    notice: Notice
    reportDiscription: String
    reportSortation: String
    createdAt: String
    updatedAt: String
  }
`;
