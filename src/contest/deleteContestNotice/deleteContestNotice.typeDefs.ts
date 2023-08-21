import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    deleteContestNotice(id: String): MutationResponse
  }
`;
