const { Router } = require ('express');

const userRouter = require('./users');

const apiRouter = new Router();

apiRouter.use('/user', userRouter);

module.exports = apiRouter;