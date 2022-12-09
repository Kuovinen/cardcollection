import React from "react";
import "./DeckBuilder.css";
import DeckBMain from "./components/DeckBMain";
interface DeckBuilderProps {
  changeModule(): void;
}
function DeckBuilder(props: DeckBuilderProps) {
  const [type, setType] = React.useState<string>("60 Cards Deck");
  const [zoomCard, setZoomCard] = React.useState<string>(
    "../public/assets/DOM_DOMINARIA/DOM_7.jpg"
  );
  const deck = [1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3];
  const [iconsData, setIconsData] = React.useState({
    white: { path: "/assets/w.svg", filter: false },
    blue: { path: "/assets/u.svg", filter: false },
    black: { path: "/assets/b.svg", filter: false },
    red: { path: "/assets/r.svg", filter: true },
    green: { path: "/assets/g.svg", filter: true },
    devoid: { path: "/assets/c.svg", filter: false },
  });
  function changeType() {
    setType(() =>
      type === "60 Cards Deck" ? "Commander Deck" : "60 Cards Deck"
    );
  }

  function toggleFilter(color: string) {
    setIconsData((original) => {
      console.log({
        [color]: { ...original[color as keyof typeof iconsData] },
      });
      return {
        ...original,
        [color]: {
          ...original[color as keyof typeof iconsData],
          filter: !original[color as keyof typeof iconsData].filter,
        },
      };
    });
  }
  function makeElements() {
    const iconsDataKeys = Object.keys(iconsData);

    return iconsDataKeys.map((color: string) => (
      <input
        type="image"
        className="manaIconBtn m-1"
        src={iconsData[color as keyof typeof iconsData].path}
        onClick={() => toggleFilter(color)}
        style={{
          opacity:
            iconsData[color as keyof typeof iconsData].filter === false
              ? `0.2`
              : `1`,
        }}
      />
    ));
  }
  const iconElements = makeElements();

  const filteredCards = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"];

  ////////////////////////////////////////////////////////////////////////RETURN
  return (
    <div>
      <header className="row">
        <input type="text" placeholder="deck name" />{" "}
        <div className="filters">{iconElements}</div>
        <div className="stats text-light">
          <button className="deckSwich modSwitchBtn" onClick={changeType}>
            Change Type
          </button>
          <span>{type}</span>
          <br />
          <span>{deck.length}</span> /
          <span>{type === "60 Cards Deck" ? " 60" : " 100"}</span>
        </div>
      </header>

      <DeckBMain
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
