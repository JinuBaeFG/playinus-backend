import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    unBlock(id: String): MutationResponse
  }
`;
