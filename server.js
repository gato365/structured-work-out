require('dotenv').config();

const express = require("express");
const { engine } = require('express-handlebars');

//defaults to index.js
const mainRouter = require("./controllers");
const sequelize = require('./config/connection');

const app = express ();

const PORT = process.env.PORT || 8080;

app.engine('handlebars', engine());
app.set('view engine', 'handlebars');

app.use(express.json());

app.use(mainRouter);

sequelize.sync().then(() => {
    app.listen(PORT, () => {
        console.log("listening on httsp://localhost:" + PORT);
    });
});
