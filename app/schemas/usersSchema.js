const usersSchema = {
  getUserOptions: {
    opts: {
      schema: {
        params: {
          type: 'object',
          required: ['userId'],
          properties: {
            userId: {
              type: 'integer',
            },
          },
        },
        response: {
          200: {
            type: 'object',
            properties: {
              id: { type: 'integer' },
              user: { type: 'string' },
              email: { type: 'string' },
            },
          },
        },
      },
    },
  },
};

export default usersSchema;
