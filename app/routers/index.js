import UsersController from '../controllers/users/usersController.js';

async function routers(fastify) {
  /**
   * User part.
   */
  fastify.get('/users/:id', { handler: UsersController.getUserInformation });
}

export default routers;
