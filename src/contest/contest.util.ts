export const DeletetContest = (ids) => {
  return ids.map((item) => ({
    contestId: item.contestId,
  }));
};
