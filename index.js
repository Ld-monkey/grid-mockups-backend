import Fastify from 'fastify';

const fastify = Fastify({
  logger: true,
});

(async () => {
  try {
    await fastify.listen({ port: 3001 });
  } catch (err) {
    console.error(err);
    process.exit(1);
  }
})();
