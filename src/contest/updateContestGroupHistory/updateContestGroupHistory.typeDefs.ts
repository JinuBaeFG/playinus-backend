import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    updateContestGroupHistory(
      id: String
      contestId: String
      contestMatchGroupId: String
      contestTeamId: String
      contestCourtId: String
      matchNo: Int
      matchTimeHour: String
      matchTimeMin: String
      opponentTeamId: String
      contestTeamScore: Int
      opponentTeamScore: Int
    ): MutationResponse
  }
`;
