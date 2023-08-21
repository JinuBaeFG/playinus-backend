import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeContestGroupMatchResult(
      contestMatchGroupId: String
    ): [ContestGroupMatchResult]
  }
`;
