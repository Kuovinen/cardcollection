const express = require("express");
const app = express();
const port = 3500;
const cors = require("cors");
const db = require("./queries");
app.use(cors());
app.use(express.json());

//use to get all card data
app.post("/", db.getSetData);
//use to get all card data WITH COLOR
app.post("/WC", db.getSetDataWC);

//use to get filtered cards with data for deck building
app.post("/filter", db.getFilteredCards);

//use to adjust specific cards amount
app.post("/adjust", db.adjust);

//get all cards
app.get("/allCards", db.getAllCardData);

app.listen(port, function () {
  console.log(`Collector server listening port ${port}!`);
});
