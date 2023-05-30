import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeFacilityTag(offset: Int): [FacilityTag]
  }
`;
