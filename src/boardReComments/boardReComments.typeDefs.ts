import { gql } from "apollo-server-express";

export default gql`
  type BoardReComment {
    id: Int!
    user: User!
    boardComment: BoardComment!
    payload: String!
    isMine: Boolean!
    createdAt: String!
    updatedAt: String!
  }
`;
