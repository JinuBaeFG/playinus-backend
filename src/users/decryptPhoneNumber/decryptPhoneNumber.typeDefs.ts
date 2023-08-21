import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    decryptPhoneNumber(phoneNumber: String): DecryptPhoneNumber
  }

  type DecryptPhoneNumber {
    ok: Boolean
    phoneNumber: String
  }
`;
