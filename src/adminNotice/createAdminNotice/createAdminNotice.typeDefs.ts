import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    createAdminNotice(title: String, discription: String): MutationResponse
  }
`;
