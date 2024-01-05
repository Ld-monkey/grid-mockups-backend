async function routers(fastify) {
  fastify.get('/users/:id', (request, reply) => {
    reply.send({
      user: 'Georges',
      email: 'georges@email.com',
      created_at: '01.12.2024',
      update_at: '01.12.2024',
    });
  });
}

export default routers;
