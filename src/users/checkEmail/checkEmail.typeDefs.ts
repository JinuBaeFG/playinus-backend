import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    checkEmail(email: String): MutationResponse
  }
`;
