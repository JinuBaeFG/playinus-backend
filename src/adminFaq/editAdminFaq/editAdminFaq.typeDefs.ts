import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    editAdminFaq(
      id: String
      title: String
      discription: String
    ): MutationResponse
  }
`;
