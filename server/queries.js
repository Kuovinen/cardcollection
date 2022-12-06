const Pool = require("pg").Pool;
const pool = new Pool({
  user: "me",
  host: "localhost",
  database: "mtg",
  password: "psw", //shh, don't tell anyone
  port: 5432,
});
//send specific sets data
const getSetData = (request, response) => {
  const set = request.body.set;
  console.log(set);
  pool.query(`SELECT * FROM card WHERE set='${set}'`, (error, results) => {
    if (error) {
      throw error;
    }
    response.status(200).json(results.rows);
  });
  console.log(`sent full ${set} set data`);
};
//send all sets data
const getAllCardData = (request, response) => {
  const set = request.body.set;
  console.log(set);
  pool.query(`SELECT amount FROM card`, (error, results) => {
    if (error) {
      throw error;
    }
    response.status(200).json(results.rows);
  });
  console.log(`sent all card data`);
};

//adjust
const adjust = (request, response) => {
  const { adj, set, cardNumber } = request.body;
  console.log(request.body);
  // request.body = {adj:-1,set:'IN1',cardNumber:1}

  pool.query(
    `SELECT * FROM card WHERE number=${cardNumber} AND set='${set.toUpperCase()}'`,
    (error, results) => {
      if (error) {
        throw error;
      }
      const currentAmount = results.rows[0].amount;
      if (adj > 0 || currentAmount > 0) {
        pool.query(
          `UPDATE card SET amount=${
            currentAmount + adj
          } WHERE number=${cardNumber} AND set='${set.toUpperCase()}'`,
          (error, results) => {
            if (error) {
              throw error;
            }
            response.status(200).json({ adjust: "card" });
          }
        );
      }
    }
  );

  console.log(
    `Adjusted card ${set.toUpperCase()}-${cardNumber} to ${
      adj > 0 ? "+1" : "-1"
    }.`
  );
};

//Fill db with empty set data: Development command.
const createCards = (request, response) => {
  console.log("CREATE");
  //EDIT THESE AMOUNT TO CONTROL SQL TABLE ADDITION/////////////////
  const setData = { totalNumberOfCardsToBeAdded: 275, code: "WOS" };
  //////////////////////////////////////////////////////////////////
  const x = setData.totalNumberOfCardsToBeAdded;
  const y = setData.code;
  function insertCard(i) {
    pool.query(
      `INSERT INTO card (set,number,amount,name,color) VALUES ('${y}', ${i} , 0 ,null, null)`,
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
  console.log(`Added ${x} cards from set ${y}.`);
};

module.exports = {
  getSetData,
  createCards,
  adjust,
  getAllCardData,
};
