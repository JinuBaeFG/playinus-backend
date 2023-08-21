import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeContestsByDate(date: String, offset: Int): [Contest]
  }
`;
