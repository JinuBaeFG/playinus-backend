const editConfigResolvers = async (
  _,
  { id, privacyTerms, gpsTerms, useTerms },
  { client }
) => {
  try {
    await client.config.update({
      data: {
        privacyTerms,
        gpsTerms,
        useTerms,
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
