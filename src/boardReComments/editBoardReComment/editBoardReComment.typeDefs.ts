import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    editBoardReComment(id: String!, payload: String!): MutationResponse!
  }
`;
