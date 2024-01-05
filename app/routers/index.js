import UsersController from '../controllers/users/usersController.js';

async function routers(fastify) {
  // Get simple user information.
  fastify.get(
    '/users/:userId',
    UsersController.getUserInformation.opts,
    UsersController.getUserInformation.handler,
  );
}

export default routers;
