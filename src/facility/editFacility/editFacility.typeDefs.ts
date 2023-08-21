import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    editFacility(
      id: String
      title: String
      discription: String
      sortation: String
      titleBannerImage: Upload
    ): MutationResponse
  }
`;
