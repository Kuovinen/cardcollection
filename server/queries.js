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
  pool.query(
    `SELECT set,number,amount FROM card WHERE set='${set}'`,
    (error, results) => {
      if (error) {
        throw error;
      }
      console.log(results.rows);
      response.status(200).json(results.rows);
    }
  );

  console.log(`sent full ${set} set data`);
};
//send specific sets data with color info
const getSetDataWC = (request, response) => {
  const set = request.body.set;
  console.log(set);
  pool.query(
    `SELECT set,number,amount,white,blue,black,red,green FROM card WHERE set='${set}'`,
    (error, results) => {
      if (error) {
        throw error;
      }
      response.status(200).json(results.rows);
    }
  );

  console.log(`sent full ${set} set data`);
};
//send specific sets data with color info
const getFilteredCards = (request, response) => {
  const { set, white, blue, black, red, green, name } = request.body;
  console.log(name);
  console.log(request.body);
  const nameOrSetAddOn =
    name !== "" ? `AND LOWER(name) LIKE '%${name}%'` : `AND set='${set}'`;
  pool.query(
    `SELECT set,number,name,amount FROM card WHERE  (white=${white} OR blue=${blue} OR black=${black} OR red=${red} OR green=${green}) ${nameOrSetAddOn}`,
    (error, results) => {
      if (error) {
        throw error;
      }
      response.status(200).json(results.rows);
    }
  );

  console.log(
    `GOT QUREY |||: SELECT set,number,name,amount FROM card WHERE  (white=${white} OR blue=${blue} OR black=${black} OR red=${red} OR green=${green}) ${nameOrSetAddOn}`
  );
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

//adjust card amount, where adj can be (+)1 or -1 thus changing the total.
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

module.exports = {
  getSetData,
  getSetDataWC,
  adjust,
  getAllCardData,
  getFilteredCards,
};
