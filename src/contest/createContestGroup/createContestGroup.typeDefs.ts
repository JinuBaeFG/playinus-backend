import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    createContestGroup(groupName: String, contestId: String): MutationResponse
  }
`;
