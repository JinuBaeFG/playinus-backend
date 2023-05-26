import client from "../client";

export default {
  Facility: {
    tutor: ({ id }) => {
      return client.tutor.findMany({
        where: {
          facility: {
            some: {
              id,
            },
          },
        },
      });
    },
    group: ({ id }) => {
      return client.group.findMany({
        where: {
          facility: {
            some: {
              id,
            },
          },
        },
      });
    },
    facilityImage: ({ id }) => {
      return client.facilityImage.findMany({
        where: {
          facility: {
            some: {
              id,
            },
          },
        },
      });
    },
    facilitySports: ({ id }) => {
      return client.facilitySports.findMany({
        where: {
          facility: {
            some: {
              id,
            },
          },
        },
      });
    },
    facilityInfo: ({ id }) => {
      return client.facilityInfo.findMany({
        where: {
          facility: {
            some: {
              id,
            },
          },
        },
      });
    },
    facilityTag: ({ id }) => {
      return client.facilityTag.findMany({
        where: {
          facility: {
            some: {
              id,
            },
          },
        },
      });
    },
  },
};
