import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeTutors(offset: Int!, sportsEvent: String): [Tutor]
  }
`;
