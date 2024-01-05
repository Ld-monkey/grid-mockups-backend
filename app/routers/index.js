import usersController from '../controllers/usersController.js';
import usersSchema from '../schemas/usersSchema.js';

async function routers(fastify) {
  // Get simple user information.
  fastify.get(
    '/users/:userId',
    usersSchema.getUserOptions.opts,
    usersController.getUserHandler.handler,
  );
}

export default routers;
