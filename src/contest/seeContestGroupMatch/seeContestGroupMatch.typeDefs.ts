import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeContestGroupMatch(contestGroupId: String): [ContestMatchGroup]
  }
`;
