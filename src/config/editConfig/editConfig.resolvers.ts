const editConfigResolvers = async (
  _,
  { id, privacyTerms, gpsTerms },
  { client }
) => {
  console.log(id, privacyTerms, gpsTerms);
  try {
    await client.config.update({
      data: {
        privacyTerms,
        gpsTerms,
      },
      where: {
        id,
      },
    });

    return {
      ok: true,
    };
  } catch (e) {
    return { ok: false, error: e };
  }
};

export default {
  Mutation: {
    editConfig: editConfigResolvers,
  },
};
