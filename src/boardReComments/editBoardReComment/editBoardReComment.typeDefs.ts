import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    editBoardReComment(id: Int!, payload: String!): MutationResponse!
  }
`;
