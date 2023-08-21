import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeContestTournamentGroup(contestGroupId: String): [ContestTournamentGroup]
  }
`;
