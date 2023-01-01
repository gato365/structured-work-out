const express = require("express");

//defaults to index.js
const mainRouter = require("./controllers");

const app = express ();

const PORT = process.env.PORT || 8080;

app.use(mainRouter);

app.listen(PORT, () => {
    console.log("listening on httsp://localhost:" + PORT);
})