import { gql } from "apollo-server-express";

export default gql`
  type User {
    id: String!
    firstName: String!
    lastName: String
    username: String!
    email: String!
    createdAt: String!
    updatedAt: String!
    bio: String
    avatar: String
    photos: [Photo]
    group: [Group]
    tutor: [Tutor]
    following: [User]
    followers: [User]
    totalFollowing: Int!
    totalFollowers: Int!
    isMe: Boolean!
    isFollowing: Boolean!
    groupCount: Int!
    tutorCount: Int!
    board: [Board]
    notice: [Notice]
    gallery: [Gallery]
  }
`;
