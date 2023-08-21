import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeContestGroupMatchHistory(
      contestMatchGroupId: String
    ): [ContestGroupMatchHistory]
  }
`;
