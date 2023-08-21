import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    editContestNotice(
      id: String
      contestId: String
      noticeTitle: String
      noticeDiscription: String
    ): MutationResponse
  }
`;
