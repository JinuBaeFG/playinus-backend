import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeContestTournamentHistory(
      contestGroupTierId: String
    ): [ContestTournamentHistory]
  }
`;
