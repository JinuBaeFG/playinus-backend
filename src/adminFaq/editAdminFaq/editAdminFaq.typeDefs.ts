import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    editAdminFaq(id: Int, title: String, discription: String): MutationResponse
  }
`;
