import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    deleteUser(password: String): MutationResponse
  }
`;
