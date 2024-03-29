import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    sendMessage(
      payload: String!
      roomId: String
      userId: String
    ): MutationResponse!
  }
`;
