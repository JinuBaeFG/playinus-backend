import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    deleteAdminFaq(id: String): MutationResponse
  }
`;
