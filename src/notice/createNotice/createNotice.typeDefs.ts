import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    createNotice(
      id: String
      title: String
      discription: String
      sortation: String
    ): Notice
  }
`;
