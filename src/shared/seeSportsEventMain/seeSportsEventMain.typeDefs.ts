import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeSportsEventMain(offset: Int): [SportsEvent]
  }
`;
