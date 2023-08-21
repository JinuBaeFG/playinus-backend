import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    deleteNoticeComment(id: String!): MutationResponse!
  }
`;
