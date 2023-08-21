import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    createContestTournament(
      contestId: String
      contestGroupId: String
      totalRound: Int
      roundAdvance: Int
    ): MutationResponse
  }
`;
