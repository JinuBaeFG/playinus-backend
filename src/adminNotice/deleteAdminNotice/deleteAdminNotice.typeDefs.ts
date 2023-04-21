import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    deleteAdminNotice(id: Int): MutationResponse
  }
`;
