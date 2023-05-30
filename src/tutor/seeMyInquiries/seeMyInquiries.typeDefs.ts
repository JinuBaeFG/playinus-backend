import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeMyInquiries(offset: Int): [TutorInquiry]
  }
`;
