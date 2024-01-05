const UsersController = {
  getUserInformation: {
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
    handler: function (request, reply) {
      reply.send({
        id: 1,
        user: 'Georges',
        email: 'georges@email.com',
        created_at: '01.12.2024',
        update: '01.12.2024',
      });
    },
  },
};

export default UsersController;
