import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    deleteContestReport(id: String): MutationResponse
  }
`;
