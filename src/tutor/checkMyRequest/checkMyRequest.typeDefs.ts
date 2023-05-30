import { gql } from "apollo-server-express";

export default gql`
  type Query {
    checkMyRequest(offset: Int): [RequestAddTutor]
  }
`;
