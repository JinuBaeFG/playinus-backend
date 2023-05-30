import { gql } from "apollo-server-express";

export default gql`
  type Board {
    id: Int
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
    boardCommentCount: Int!
    boardComments: [BoardComment]
    createdAt: String!
    updatedAt: String!
  }
`;
