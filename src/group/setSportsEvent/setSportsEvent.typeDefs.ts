import { gql } from "apollo-server-express";

export default gql`
  type Query {
    setSportsEvent(id: Int): Group
  }
`;
