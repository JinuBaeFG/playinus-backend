import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    createContestUser(
      teamName: String
      userAge: String
      userGender: String
      userTier: String
      contestSports: String
      contestSportsType: String
      contestId: String
      userId: String
    ): MutationResponse
  }

  type ContestJoinMutation {
    ok: Boolean
    id: String
  }
`;
