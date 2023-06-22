import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeSearchTutors(offset: Int!, sportsEvent: String): [Tutor]
  }
`;
