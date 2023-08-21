import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    responseInquiry(
      id: String
      tutorId: String
      userId: String
      title: String
      discription: String
    ): TutorInquiry
  }
`;
