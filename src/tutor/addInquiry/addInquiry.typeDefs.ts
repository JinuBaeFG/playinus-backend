import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    addInquiry(
      tutorId: String
      title: String
      discription: String
    ): TutorInquiry
  }
`;
