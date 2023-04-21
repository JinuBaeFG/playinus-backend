import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    createAdminFaq(title: String, discription: String): MutationResponse
  }
`;
