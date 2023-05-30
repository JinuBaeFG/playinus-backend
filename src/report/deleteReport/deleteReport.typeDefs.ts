import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    deleteReport(id: Int): MutationResponse
  }
`;
