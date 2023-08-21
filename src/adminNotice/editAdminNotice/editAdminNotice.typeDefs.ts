import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    editAdminNotice(
      id: String
      title: String
      discription: String
    ): MutationResponse
  }
`;
