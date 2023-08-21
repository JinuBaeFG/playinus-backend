import { gql } from "apollo-server-express";

export default gql`
  type AdminUser {
    id: String
    userId: String
    password: String
    email: String
    phoneNumber: String
    createdAt: String
    updatedAt: String
  }
`;
