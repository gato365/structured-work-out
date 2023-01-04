const express = require("express");
const { engine } = require('express-handlebars');

//defaults to index.js
const mainRouter = require("./controllers");

const app = express ();

const PORT = process.env.PORT || 8080;

app.engine('handlebars', engine());
app.set('view engine', 'handlebars');

app.use(express.json());

app.use(mainRouter);

app.listen(PORT, () => {
    console.log("listening on httsp://localhost:" + PORT);
})