import { gql } from "apollo-server-express";

export default gql`
  type AdminFaq {
    id: Int
    title: String
    discription: String
    createdAt: String
    updatedAt: String
  }
`;
