import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    addFeedCategory(sortKey: Int, name: String): MutationResponse
  }
`;
