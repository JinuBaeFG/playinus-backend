import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    editFeedCategory(id: String, name: String, sortKey: Int): MutationResponse
  }
`;
