import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeFacilities(
      offset: Int
      sportsEvent: String
      maxX: Float
      maxY: Float
      minX: Float
      minY: Float
    ): [Facility]
  }
`;
