import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    deleteContest(ids: [ContestIds]): MutationResponse
  }

  input ContestIds {
    contestId: String
  }
`;
