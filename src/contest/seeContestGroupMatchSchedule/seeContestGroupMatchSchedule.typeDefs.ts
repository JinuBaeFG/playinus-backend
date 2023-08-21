import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeContestGroupMatchSchedule(
      contestMatchGroupId: String
    ): [ContestGroupMatchHistory]
  }
`;
