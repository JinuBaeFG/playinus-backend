import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    blockUser(id: String): MutationResponse
  }
`;
