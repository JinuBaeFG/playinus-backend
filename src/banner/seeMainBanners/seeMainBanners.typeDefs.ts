import { gql } from "apollo-server-express";

export default gql`
  type Query {
    seeMainBanners(offset: Int, sortation: String): [Banner]
  }
`;
