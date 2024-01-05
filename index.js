import Fastify from 'fastify';
import routers from './app/routers/index.js';

const fastify = Fastify({
  logger: true,
});

fastify.register(routers, { prefix: '/v1/' });

fastify.listen({ port: 3000, host: 'localhost' }, (err, address) => {
  if (err) {
    fastify.log.error(err);
    process.exit(1);
  }
});
