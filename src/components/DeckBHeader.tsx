import React from "react";

interface DeckBHeaderProps {
  type: string;
  setType: React.Dispatch<React.SetStateAction<string>>;
  deck: number[];
}

function DeckBHeader(props: DeckBHeaderProps) {
  const [iconsData, setIconsData] = React.useState({
    white: { path: "/assets/w.svg", filter: false },
    blue: { path: "/assets/u.svg", filter: false },
    black: { path: "/assets/b.svg", filter: false },
    red: { path: "/assets/r.svg", filter: true },
    green: { path: "/assets/g.svg", filter: true },
    devoid: { path: "/assets/c.svg", filter: false },
  });
  ///////////////////////////////////////CHANGE DECK TYPE -> COMMANDER OR NORMAL
  function changeType() {
    props.setType(() =>
      props.type === "Normal Deck" ? "Commander Deck" : "Normal Deck"
    );
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
  const iconElements = makeIconElements();
  return (
    <header className="container-fluid">
      <div className="row">
        <input className="ml-3" type="text" placeholder="deck name" />{" "}
        <div className="filters">{iconElements}</div>
        <div className="stats text-light">
          <button className="deckSwich modSwitchBtn" onClick={changeType}>
            Change Type
          </button>

          <br />
        </div>
      </div>
      <span className="font-weight-bold text-light">{props.type}</span>
    </header>
  );
}
export default DeckBHeader;
