import client from "../../client";
import { blockUserList } from "../photo.utils";

const seeFeedResolver = async (
  _,
  { offset, sportsEvent, category },
  { loggedInUser }
) => {
  let blockUsers;
  if (loggedInUser !== null) {
    blockUsers = await client.blockUser.findMany({
      where: {
        userId: loggedInUser.id,
      },
    });
  }

  let NOT;
  if (blockUsers) {
    NOT = blockUserList(blockUsers);
  }

  if (
    sportsEvent !== undefined &&
    sportsEvent !== null &&
    sportsEvent !== "모든 종목"
  ) {
    if (category !== undefined && category !== null && category !== "") {
      return await client.photo.findMany({
        take: 2,
        skip: offset,
        where: {
          sportsEvent,
          feedCategory: category,
          NOT,
        },
        orderBy: {
          createdAt: "desc",
        },
      });
    } else {
      return await client.photo.findMany({
        take: 2,
        skip: offset,
        where: {
          sportsEvent,
          NOT,
        },
        orderBy: {
          createdAt: "desc",
        },
      });
    }
  } else {
    if (category !== undefined && category !== null && category !== "") {
      return await client.photo.findMany({
        take: 2,
        skip: offset,
        where: {
          feedCategory: category,
          NOT,
        },
        orderBy: {
          createdAt: "desc",
        },
      });
    } else {
      return await client.photo.findMany({
        take: 2,
        skip: offset,
        where: {
          NOT,
        },
        orderBy: {
          createdAt: "desc",
        },
      });
    }
  }
};

export default {
  Query: {
    seeFeed: seeFeedResolver,
  },
};
