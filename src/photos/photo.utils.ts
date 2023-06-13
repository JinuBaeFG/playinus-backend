export const processHashtag = (caption) => {
  const hashtags = caption.match(/#[\w]+/g) || [];
  return hashtags.map((hashtag) => ({
    where: { hashtag },
    create: { hashtag },
  }));
};

export const blockUserList = (blockUserList) => {
  return blockUserList.map((item) => ({
    user: {
      id: item.blockedById,
    },
  }));
};

export const blockGroupList = (blockUserList) => {
  return blockUserList.map((item) => ({
    users: {
      some: {
        id: item.blockedById,
      },
    },
  }));
};

export const blockBoardList = (blockUserList) => {
  return blockUserList.map((item) => ({
    user: {
      some: {
        id: item.blockedById,
      },
    },
  }));
};
