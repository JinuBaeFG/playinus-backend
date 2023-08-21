import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeInquiries(id: String, offset: Int): [TutorInquiry]
  }
`;
