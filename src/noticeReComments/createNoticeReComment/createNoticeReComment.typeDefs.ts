import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    createNoticeReComment(
      noticeCommentId: Int!
      payload: String!
    ): MutationResponse!
  }
`;
