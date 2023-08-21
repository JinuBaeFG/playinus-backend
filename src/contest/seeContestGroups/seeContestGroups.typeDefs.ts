import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeContestGroups(contestId: String): [ContestTierGroup]
  }
`;
