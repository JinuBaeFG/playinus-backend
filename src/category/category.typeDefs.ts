import { gql } from "apollo-server-express";

export default gql`
  type Category {
    id: String
    name: String
    createdAt: String
    updatedAt: String
  }
`;
