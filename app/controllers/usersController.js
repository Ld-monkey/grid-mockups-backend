const usersController = {
  getUserHandler: {
    handler: function (request, reply) {
      reply.send({
        id: 1,
        user: 'Georges',
        email: 'georges@email.com',
        created_at: '01.12.2024',
        update_at: '01.12.2024',
      });
    },
  },
};

export default usersController;
