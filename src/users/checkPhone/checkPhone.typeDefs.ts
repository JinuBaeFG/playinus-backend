import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    checkPhone(phoneNumber: String): MutationResponse
  }
`;
