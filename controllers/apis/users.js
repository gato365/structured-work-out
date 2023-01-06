const { Router } = require('express');

const User = require('../../models/User');

const userRouter = new Router();

userRouter.post('/login', async(req, res) => {
    const { username, password } = req.body;

    const user = await User.findOne({ where: {username}});

    if (!user) {
        res.status(401).end('User not Found');
        return;
    };

    res.end();
})

module.exports = userRouter;