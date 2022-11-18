import "./Card.css";
import React from "react";
interface props {
  img: string;
  cardNumber: string;
  amount: number;
}

function Card(props: props) {
  const [amount, setAmount] = React.useState(props.amount);
  const mtgCardSize = { width: 6.35, height: 8.9 };
  const scaleCoeff = 0.7; //change this to affect the size of cards on screen
  const cardBKG = {
    backgroundImage: `url(${props.img})`,
    height: `${mtgCardSize.height * scaleCoeff}rem`,
    width: `${mtgCardSize.width * scaleCoeff}rem`,
    backgroundSize: `contain`,
    opacity: `${amount === 0 ? "1" : "0.2"}`,
  };
  const amountIndicatorStyle = {
    display: `${amount === 0 ? "none" : "block"}`,
    border: `${amount < 4 ? "white 0.1rem" : "orange 0.2rem"}  solid`,
  };
  function addCard() {
    setAmount((original) => original + 1);
  }
  function takeCard() {
    setAmount((original) => (original === 0 ? original : original - 1));
  }

  return (
    <div
      className="mtgCard position-relative flex-column d-flex "
      style={{
        ...cardBKG,
        backgroundImage: "none",
        opacity: "1",
      }}
    >
      {/*CONTAINER for the IMAGE of the card itself*/}
      <div className="cardBKG position-absolute" style={cardBKG}></div>
      {/*Card NUMBER*/}
      <small className="position-absolute text-light bg-dark rounded d-inline-block m-1 px-1 user-select-none">
        {props.cardNumber}
      </small>
      {/*Amount changing BUTTONS*/}
      <button className="crdBtn text-light h2" onClick={addCard}>
        +
      </button>
      <button className="crdBtn text-light h2" onClick={takeCard}>
        -
      </button>
      {/*AMOUNT*/}
      <small className="crdAmount" style={amountIndicatorStyle}>
        {amount}
      </small>
    </div>
  );
}

export default Card;
