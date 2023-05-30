import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    uploadPhoto(
      files: [Upload]
      caption: String
      sortation: String
      publicLevel: String
      sportsEvent: String
      feedCategory: String
    ): Photo
  }
`;
