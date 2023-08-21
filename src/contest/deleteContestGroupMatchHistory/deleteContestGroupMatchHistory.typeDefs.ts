import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    deleteContestGroupMatchTeam(
      contestId: String
      contestTeamId: String
      contestMatchGroupId: String
    ): MutationResponse
  }
`;
