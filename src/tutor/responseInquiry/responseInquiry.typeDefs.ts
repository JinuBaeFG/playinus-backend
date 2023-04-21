import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    responseInquiry(
      id: Int
      tutorId: Int
      userId: Int
      title: String
      discription: String
    ): TutorInquiry
  }
`;
