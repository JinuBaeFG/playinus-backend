import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    createNoticeComment(noticeId: Int!, payload: String!): MutationResponse!
  }
`;
