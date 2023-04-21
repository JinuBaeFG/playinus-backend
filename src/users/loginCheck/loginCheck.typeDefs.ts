import { gql } from "apollo-server-express";

export default gql`
  type Query {
    loginCheck(uid: String, interlock: String): LoginCheck
  }

  type LoginCheck {
    ok: Boolean
  }
`;
