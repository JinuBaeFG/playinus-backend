import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    editNoticeComment(id: String!, payload: String!): MutationResponse!
  }
`;
