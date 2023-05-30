import { gql } from "apollo-server-express";

export default gql`
  type ReComment {
    id: Int!
    user: User!
    comment: Comment!
    payload: String!
    isMine: Boolean!
    createdAt: String!
    updatedAt: String!
  }
`;
