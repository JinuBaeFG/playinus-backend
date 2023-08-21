import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    createContestCourt(courtName: String, contestId: String): MutationResponse
  }
`;
