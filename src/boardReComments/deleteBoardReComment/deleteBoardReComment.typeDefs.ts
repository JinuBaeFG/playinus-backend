import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    deleteBoardReComment(id: String!): MutationResponse!
  }
`;
