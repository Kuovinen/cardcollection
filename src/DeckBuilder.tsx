import React from "react";
import "./DeckBuilder.css";
import DeckBMain from "./components/DeckBMain";
import DeckBHeader from "./components/DeckBHeader";

interface DeckBuilderProps {
  changeModule(): void;
}
function DeckBuilder(props: DeckBuilderProps) {
  const [type, setType] = React.useState<string>("60 Cards Deck");
  const [zoomCard, setZoomCard] = React.useState<string>(
    "../public/assets/DOM_DOMINARIA/DOM_7.jpg"
  );
  const deck = [1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3];

  const filteredCards = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"];

  ////////////////////////////////////////////////////////////////////////RETURN
  return (
    <div>
      <DeckBHeader type={type} setType={setType} deck={deck} />
      <DeckBMain
        type={type}
        filteredCards={filteredCards}
        zoomCard={zoomCard}
        deck={deck}
      />
      <footer className="d-flex justify-content-center">
        <button className="modSwitchBtn" onClick={props.changeModule}>
          COLLECTOR
        </button>
      </footer>
    </div>
  );
}

export default DeckBuilder;
