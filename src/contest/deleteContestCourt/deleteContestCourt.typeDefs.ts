import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    deleteContestCourt(ids: [DeleteCourtIds]): MutationResponse
  }

  input DeleteCourtIds {
    id: String
  }
`;
