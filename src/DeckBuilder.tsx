import React from "react";
import "./DeckBuilder.css";
interface DeckBuilderProps {
  changeModule(): void;
}

function DeckBuilder(props: DeckBuilderProps) {
  const [type, setType] = React.useState<string>("60 Cards Deck");
  const deck = [1, 2, 3];
  function changeType() {
    setType(() =>
      type === "60 Cards Deck" ? "Commander Deck" : "60 Cards Deck"
    );
  }

  ////////////////////////////////////////////////////////////////////////RETURN
  return (
    <div>
      <header>DECK</header>
      <main>
        <button className="deckSwich modSwitchBtn" onClick={changeType}>
          Change Type
        </button>
        <div className="cardZoom">ZOOM</div>
        <div className="stats text-light">
          <span>{type}</span>
          <br />
          <span>{deck.length}</span> /
          <span>{type === "60 Cards Deck" ? " 60" : " 100"}</span>
        </div>
        <div className="actualDeck p-2 d-flex">
          {deck.map(() => (
            <div className="deckCard text-light"></div>
          ))}
        </div>
      </main>
      <div className="d-flex justify-content-center">
        <button className="modSwitchBtn" onClick={props.changeModule}>
          COLLECTOR
        </button>
      </div>
    </div>
  );
}

export default DeckBuilder;
