import { gql } from "apollo-server-express";

export default gql`
  type Tutor {
    id: Int
    user: User
    name: String
    discription: String
    sidoName: String
    gusiName: String
    dongEubMyunName: String
    riName: String
    roadName: String
    buildingNumber: String
    zipcode: String
    activeArea: String
    address: String
    addrRoad: String
    addAddr: String
    areaLatitude: String
    areaLongitude: String
    tutorImage: TutorImage
    group: [Group]
    facility: [Facility]
    tutorInfo: [TutorInfo]
    tutorTag: [TutorTag]
    tutorInquiry: [TutorInquiry]
    tutorSportsEvent: [TutorSportsEvent]
    isTutor: Boolean
    createdAt: String!
    updatedAt: String!
  }

  type TutorSportsEvent {
    id: Int!
    name: String
    tutorId: Tutor
    createdAt: String!
    updateAt: String!
  }

  type TutorImage {
    id: Int!
    imagePath: String
    tutorId: Tutor
    createdAt: String!
    updateAt: String!
  }

  type TutorInfo {
    id: Int!
    tutor: Tutor
    discription: String
    awardDate: String
    createdAt: String!
    updatedAt: String!
  }

  type TutorTag {
    id: Int!
    name: String
    imagePath: String
    tutor: [Tutor]
    createdAt: String!
    updatedAt: String!
  }

  type TutorInquiry {
    id: Int!
    tutor: Tutor
    user: User
    inquiryTitle: String
    inquiryDiscription: String
    inquiryResponse: Boolean
    tutorInquiryComment: [TutorInquiryComment]
    createdAt: String!
    updatedAt: String!
  }

  type TutorInquiryComment {
    id: Int!
    user: User
    tutor: Tutor
    tutorInquiry: TutorInquiry
    responseTitle: String
    responseDiscription: String
    answerOk: Boolean
    createdAt: String!
    updatedAt: String!
  }
`;
