const { Router } = require("express");

const pathRouter = new Router();

pathRouter.get('/', (req, res) => {
    res.render('home');
})

pathRouter.get('/landing', (req, res) => {
    res.render('landing');
})

pathRouter.get('/login', (req, res) => {
    res.render('login');
})

pathRouter.get('/signup', (req, res) => {
    res.render('signup');
})

pathRouter.get('/nav', (req, res) => {
    res.render('nav');
})
module.exports = pathRouter;