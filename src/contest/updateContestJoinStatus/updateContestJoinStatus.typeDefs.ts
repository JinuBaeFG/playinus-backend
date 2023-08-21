import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    updateContestJoinStatus(
      contestPaymentId: String
      status: String
    ): MutationResponse
  }
`;
