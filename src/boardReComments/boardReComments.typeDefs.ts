import { gql } from "apollo-server-express";

export default gql`
  type BoardReComment {
    id: String!
    user: User!
    boardComment: BoardComment!
    payload: String!
    isMine: Boolean!
    createdAt: String!
    updatedAt: String!
  }
`;
