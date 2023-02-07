import React from "react";
import CardZoom from "./CardZoom";
import DBActualDeck from "./DBActualDeck";
import DBCardList from "./DBCardList";
import DBStats from "./DBStats";
import "./DeckBMain.css";
import { cardData } from "../DeckBuilder";

interface DBMainProps {
  zoomCard: string;
  filteredCards: cardData[];
  type: string;
  setZoomCard: React.Dispatch<React.SetStateAction<string>>;
}

function DeckBMain(props: DBMainProps) {
  const [deck, setDeck] = React.useState<cardData[] | []>([]);
  console.log(props.filteredCards);
  return (
    <main className="container-fluid">
      <div
        className="row ml-2 mr-4 flex-nowrap p-0 m-0"
        style={{ height: "50vh" }}
      >
        <DBCardList
          filteredCards={props.filteredCards}
          setZoomCard={props.setZoomCard}
          setDeck={setDeck}
        />
        <DBStats deck={deck} type={props.type} />
        <CardZoom zoomCard={props.zoomCard} />
      </div>
      <DBActualDeck deck={deck} />
    </main>
  );
}
export default DeckBMain;
