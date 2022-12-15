import React from "react";
import { cardData } from "../DeckBuilder";
import { setButtons } from "./Navigator";
interface DeckBHeaderProps {
  type: string;
  setType: React.Dispatch<React.SetStateAction<string>>;
  setFilteredCards: React.Dispatch<React.SetStateAction<cardData[]>>;
}

function DeckBHeader(props: DeckBHeaderProps) {
  const [set, setSet] = React.useState("IN1");
  const [cardName, setCardName] = React.useState("");
  const [iconsData, setIconsData] = React.useState({
    white: { path: "/assets/w.svg", filter: false },
    blue: { path: "/assets/u.svg", filter: false },
    black: { path: "/assets/b.svg", filter: false },
    red: { path: "/assets/r.svg", filter: false },
    green: { path: "/assets/g.svg", filter: false },
  });
  ///////////////////////////////////////CHANGE DECK TYPE -> COMMANDER OR NORMAL
  function changeType() {
    props.setType(() =>
      props.type === "Normal Deck" ? "Commander Deck" : "Normal Deck"
    );
  }
  //////////////////////////////////////////////////////////////////CHANGE SET
  function changeSet(set: string) {
    setSet(() => set);
  }
  //////////////////////////////////////////////////////////////////get SQL data
  async function getCardAmounts() {
    const data = await fetch("http://localhost:3500/filter", {
      method: "post",
      body: JSON.stringify({
        name: cardName,
        set: set,
        white: iconsData.white.filter,
        blue: iconsData.blue.filter,
        black: iconsData.black.filter,
        red: iconsData.red.filter,
        green: iconsData.green.filter,
      }),
      headers: { "Content-type": "application/json" },
    });
    const dataParsed = await data.json();
    props.setFilteredCards(() => dataParsed);
    console.log(dataParsed);
  }
  function onInput(e: React.ChangeEvent<HTMLInputElement>) {
    setCardName(() => e.target.value.toLowerCase());
  }
  /////////////////////////////////////////MAKE MANA ICON BUTTONS FOR THE FILTER
  function makeIconElements() {
    const iconsDataKeys = Object.keys(iconsData);
    //////////////////////////////////////////////////////////TOGGLE MANA FILTER
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
    return iconsDataKeys.map((color: string, index) => (
      <input
        key={index}
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
  const setIcons = setButtons.map((element, index) => (
    <button key={index /*never intended to be changed*/} className="setIcon">
      <img
        src={element.icon}
        onClick={() => changeSet(element.setCode)}
        alt={element.alt}
        style={{
          opacity: element.setCode === set && cardName === "" ? "1" : "0.35",
        }}
      />
    </button>
  ));
  const iconElements = makeIconElements();
  //////////////////////////////////////////////////////////////////////////////
  //////////////////////////////////////////////////////////////COMPONENT RETURN
  //////////////////////////////////////////////////////////////////////////////
  return (
    <header className="container-fluid">
      <div className="row">
        <input
          className="ml-3 cardNameInput"
          type="text"
          placeholder="Name:"
          onChange={(e) => onInput(e)}
          value={cardName}
        />
        <div className="filters">{iconElements}</div>
        <div className="stats text-light">
          <button onClick={() => getCardAmounts()}>GET CARDS</button>
          <button className="deckSwich modSwitchBtn" onClick={changeType}>
            Change Type
          </button>

          <br />
        </div>
      </div>
      <div> {setIcons}</div>
      <span className="font-weight-bold text-light">{props.type}</span>
    </header>
  );
}
export default DeckBHeader;
