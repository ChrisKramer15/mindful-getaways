console.log("Hello, World");

// CREATING AN API
const express = require("express");
const app = express();
const PORT = 3000;

app.listen(PORT, "0.0.0.0", () => {
    console.log(`connected to server at port ${PORT}`)
})



