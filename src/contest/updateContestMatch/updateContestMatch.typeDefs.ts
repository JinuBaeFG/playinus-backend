import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    updateContestMatch(contestGroupId: String): MutationResponse
  }
`;
