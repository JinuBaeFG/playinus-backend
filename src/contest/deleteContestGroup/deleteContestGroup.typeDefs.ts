import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    deleteContestGroup(ids: [ContestGroupIds]): MutationResponse
  }

  input ContestGroupIds {
    id: String
  }
`;
