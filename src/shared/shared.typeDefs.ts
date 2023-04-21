import { gql } from "apollo-server-express";

export default gql`
  type MutationResponse {
    ok: Boolean!
    id: Int
    error: String
  }

  type Tag {
    id: Int
    name: String
    createdAt: String!
    updatedAt: String!
  }

  type SportsEvent {
    id: Int
    name: String
    imagePath: String
    createdAt: String!
    updatedAt: String!
  }

  type Notice {
    id: Int
    userId: User
    groupId: Group
    tutorId: Tutor
    title: String
    discription: String
    sortation: String
    createdAt: String!
    updatedAt: String!
  }

  type Gallery {
    id: Int
    userId: User
    groupId: Group
    tutorId: Tutor
    title: String
    discription: String
    galleryImage: [GalleryImage]
    sortation: String
    createdAt: String!
    updatedAt: String!
  }

  type GalleryImage {
    id: Int
    imagePath: String
    galleryId: Int
    createdAt: String!
    updatedAt: String!
  }
`;
