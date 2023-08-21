import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    createContestGroupMatchHistory(
      contestId: String
      contestTeam: [InputContestTeam]
      contestMatchGroupId: String
    ): MutationResponse
  }

  input InputContestTeam {
    id: String
  }
`;
