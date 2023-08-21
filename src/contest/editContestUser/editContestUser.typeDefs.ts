import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    editContestUser(
      id: String
      teamName: String
      userAge: Int
      userGender: String
      userTier: String
      contestSports: String
      contestSportsType: String
      contestId: String
      userId: String
    ): MutationResponse
  }
`;
