import { v4 as uuidv4 } from "uuid";
import React from "react";
import { cardData } from "../DeckBuilder";
import settingsType from "../settings"; //just the type
interface DBCardList {
  filteredCards: cardData[];
  setZoomCard: React.Dispatch<React.SetStateAction<string>>;
  setDeck: React.Dispatch<React.SetStateAction<cardData[]>>;
}
function DBActualDeck(props: DBCardList) {
  const [page, setPage] = React.useState(0); //page of card array to display
  const proposedCards = [];
  const chunkSize = 10;
  for (let i = 0; i < props.filteredCards.length; i += chunkSize) {
    const chunk = props.filteredCards.slice(i, i + chunkSize);
    proposedCards.push(chunk);
  }
  function goBack() {
    setPage((original) => (page > 0 ? original - 1 : original));
  }
  function goForward() {
    setPage((original) =>
      page < proposedCards.length - 1 ? original + 1 : original
    );
  }
  function setZoom(card: cardData) {
    const set = card.set === "40K" ? "K40" : card.set;
    const path = `/assets/${settingsType[set].path}/${card.set}_${card.number}.jpg`;
    props.setZoomCard(path);
  }
  function addToDeck(card: cardData) {
    props.setDeck((original) => {
      return [...original, card];
    });
  }
  const cardPage =
    proposedCards.length > 0
      ? proposedCards[page].map((card) => {
          console.log(card);
          return (
            <li
              key={uuidv4()}
              onMouseEnter={() => setZoom(card)}
              className="cardName text-light row p-0 m-1"
            >
              <p
                className="col-6 p-0 m-0 d-inline-block"
                style={{ opacity: card.amount > 0 ? "1" : "0.2" }}
              >
                {card.name}
              </p>
              <p className="col-2 p-0 m-0 d-inline-block">{card.amount}</p>
              <div className="crdNameBtns col-4 d-inline-block p-0 m-0">
                <button className="crdNameBtns p-0 m-0 col-6">-</button>
                <button
                  className="crdNameBtns p-0 m-0 col-6"
                  onClick={() => addToDeck(card)}
                >
                  +
                </button>
              </div>
            </li>
          );
        })
      : [];

  return (
    <div className="cards m-0 p-0 mt-2 col-10 col-xl-8 text-light">
      AVAILABLE CARDS:
      <ul className="p-0 m-0 mr-2">{cardPage}</ul>
      <button onClick={() => goBack()}>PREVIOUS</button>
      <button onClick={() => goForward()}>NEXT</button>
    </div>
  );
}
export default DBActualDeck;
