import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    createNotice(
      id: Int
      title: String
      discription: String
      sortation: String
    ): Notice
  }
`;
