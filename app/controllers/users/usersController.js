const UsersController = {
  getUserInformation: function(request, reply) {
    reply.send({
      user: 'Georges',
      email: 'georges@email.com',
      created_at: '01.12.2024',
      update: '01.12.2024',
    });
  }
}

export default UsersController;