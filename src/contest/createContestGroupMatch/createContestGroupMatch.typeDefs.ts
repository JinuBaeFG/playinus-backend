import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    createContestGroupMatch(
      groupNo: Int
      contestId: String
      contestGroupId: String
    ): MutationResponse
  }
`;
