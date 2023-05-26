import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    createReport(
      photoId: Int
      boardId: Int
      noticeId: Int
      reportDiscription: String
      reportSortation: String
    ): MutationResponse
  }
`;
