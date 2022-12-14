import React from "react";
import "./DeckBuilder.css";
import DeckBMain from "./components/DeckBMain";
import DeckBHeader from "./components/DeckBHeader";
export interface cardData {
  set: string;
  number: number;
  name: string;
  amount: number;
}
interface DeckBuilderProps {
  changeModule(): void;
}
function DeckBuilder(props: DeckBuilderProps) {
  const [type, setType] = React.useState<string>("Normal Deck");
  const [zoomCard, setZoomCard] = React.useState<string>(
    "../public/assets/DOM_DOMINARIA/DOM_7.jpg"
  );
  const [filteredCards, setFilteredCards] = React.useState<cardData[]>([]);
  ////////////////////////////////Contacts server to get SQL data for a card set

  ////////////////////////////////////////////////////////////////////////RETURN
  return (
    <div>
      <DeckBHeader
        type={type}
        setType={setType}
        setFilteredCards={setFilteredCards}
      />
      <DeckBMain
        type={type}
        filteredCards={filteredCards}
        zoomCard={zoomCard}
        setZoomCard={setZoomCard}
      />
      <div className="assembledDecks"></div>
      <footer className="d-flex justify-content-center">
        <button className="modSwitchBtn" onClick={props.changeModule}>
          COLLECTOR
        </button>
      </footer>
    </div>
  );
}

export default DeckBuilder;
