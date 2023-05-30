import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    editAdminNotice(
      id: Int
      title: String
      discription: String
    ): MutationResponse
  }
`;
