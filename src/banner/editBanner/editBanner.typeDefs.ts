import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    editBanner(
      id: String
      title: String
      discription: String
      sortation: String
      titleBannerImage: Upload
    ): MutationResponse
  }
`;
