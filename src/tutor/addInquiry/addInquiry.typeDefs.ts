import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    addInquiry(tutorId: Int, title: String, discription: String): TutorInquiry
  }
`;
