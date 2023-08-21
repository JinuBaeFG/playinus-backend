import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeContestReport(id: String): ContestNotice
  }
`;
