import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    editNoticeComment(id: Int!, payload: String!): MutationResponse!
  }
`;
