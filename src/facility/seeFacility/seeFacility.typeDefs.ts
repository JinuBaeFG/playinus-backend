import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeFacility(id: Int): Facility
  }
`;
