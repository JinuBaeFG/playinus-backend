import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeInquiry(id: String): TutorInquiry
  }
`;
