import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    createNoticeReComment(
      noticeCommentId: String!
      payload: String!
    ): MutationResponse!
  }
`;
