import { gql } from "apollo-server-express";

export default gql`
  type BoardComment {
    id: String!
    user: User!
    board: Board!
    payload: String!
    isMine: Boolean!
    boardReComments: [BoardReComment]
    boardReCommentCount: Int
    createdAt: String!
    updatedAt: String!
  }
`;
