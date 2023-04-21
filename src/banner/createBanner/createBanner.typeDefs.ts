import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    createBanner(
      title: String
      discription: String
      sortation: String
      titleBannerImage: Upload
    ): MutationResponse
  }
`;
