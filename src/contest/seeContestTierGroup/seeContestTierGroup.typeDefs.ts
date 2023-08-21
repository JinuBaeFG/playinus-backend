import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeContestTierGroup(
      contestId: String
      sportsSort: String
      groupSort: String
    ): [ContestTierGroup]
  }
`;
