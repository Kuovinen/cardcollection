const Pool = require("pg").Pool;
const pool = new Pool({
  user: "me",
  host: "localhost",
  database: "mtg",
  password: "psw", //shh, don't tell anyone
  port: 5432,
});
const getData = (request, response) => {
  pool.query("SELECT * FROM card", (error, results) => {
    if (error) {
      throw error;
    }
    response.status(200).json(results.rows);
  });
};
const createCards = (request, response) => {
  const totalNumberOfCardsToBeAdded = 244;
  const x = totalNumberOfCardsToBeAdded;
  function insertCard(i) {
    pool.query(
      `INSERT INTO card (set,number,amount,name,color) VALUES ('IN1', ${i} , 0 ,null, null)`,
      (error, results) => {
        if (error) {
          throw error;
        }
      }
    );
  }
  for (let i = 1; i <= x; i++) {
    setTimeout(() => insertCard(i), i * 200);
  } //200 seems to somewhat ensure the elements are place in the database in the correct order
  response.status(201).send(`Added ${x} cards.`);
};

module.exports = {
  getData,
  createCards,
};
