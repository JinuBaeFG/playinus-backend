import { gql } from "apollo-server-express";

export default gql`
  type Subscription {
    roomUpdates(id: String!): Message
  }
`;
