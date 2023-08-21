import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    createContestNotice(
      contestId: String
      noticeTitle: String
      noticeDiscription: String
    ): MutationResponse
  }
`;
