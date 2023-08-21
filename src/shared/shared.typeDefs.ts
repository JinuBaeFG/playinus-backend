import { gql } from "apollo-server-express";

export default gql`
  type MutationResponse {
    ok: Boolean!
    id: Int
    error: String
  }

  type Tag {
    id: String
    name: String
    createdAt: String!
    updatedAt: String!
  }

  type SportsEvent {
    id: String
    name: String
    imagePath: String
    createdAt: String!
    updatedAt: String!
  }

  type Notice {
    id: String
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
    id: String
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
    id: String
    imagePath: String
    galleryId: String
    createdAt: String!
    updatedAt: String!
  }
`;
