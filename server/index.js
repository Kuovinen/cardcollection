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
app.post("/", db.getSetDataWC);

//use to adjust specific cards amount
app.post("/adjust", db.adjust);

/*used to populate db with empty cards.. 
NB! adjust the "totalNumberOfCardsToBeAdded" value in queries*/
app.get("/addCards", db.createCards);
//get all cards
app.get("/allCards", db.getAllCardData);

app.listen(port, function () {
  console.log(`Collector server listening port ${port}!`);
});
