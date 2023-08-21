import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    deleteContestUser(ids: [DeleteContestUser]): MutationResponse
  }

  input DeleteContestUser {
    id: String
  }
`;
