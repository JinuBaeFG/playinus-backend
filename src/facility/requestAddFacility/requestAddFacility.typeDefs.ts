import { gql } from "apollo-server-express";

export default gql`
  type Mutation {
    requestAddFacility(title: String!, discription: String!): MutationResponse
  }
`;
