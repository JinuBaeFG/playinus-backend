import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    editFeedCategory(id: Int, name: String, sortKey: Int): MutationResponse
  }
`;
