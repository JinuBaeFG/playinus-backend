import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    updateContestGroupStart(
      id: String
      contestTeamId: String
      opponentTeamId: String
    ): MutationResponse
  }
`;
