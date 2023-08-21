import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    updateContestTournamentStart(
      id: String
      contestTeamId: String
      opponentTeamId: String
    ): MutationResponse
  }
`;
