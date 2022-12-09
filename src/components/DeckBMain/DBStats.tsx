import React from "react";

interface DBCardList {
  deck: number[];
  type: string;
}
function DBStats(props: DBCardList) {
  const [manaAmount, setManaAmount] = React.useState({
    white: { path: "/assets/w.svg", value: 3, color: "rgb(230, 219, 173)" },
    blue: { path: "/assets/u.svg", value: 4, color: "rgb(38, 116, 193)" },
    black: { path: "/assets/b.svg", value: 10, color: "rgb(93, 53, 107)" },
    red: { path: "/assets/r.svg", value: 1, color: "rgb(219, 57, 55)" },
    green: { path: "/assets/g.svg", value: 2, color: "rgb(55, 159, 55)" },
    devoid: { path: "/assets/c.svg", value: 12, color: "rgb(183, 176, 176)" },
  });
  const manaAmountKeys = Object.keys(manaAmount);
  function makeManaChart(object: {
    path: string;
    value: number;
    color: string;
  }) {
    const max = object.value;
    const array: JSX.Element[] = [];
    for (let i = 0; i < max; i++) {
      array.push(
        <div
          className="manaInstance col-1 p-0"
          style={{ background: object.color }}
        ></div>
      );
    }
    return array;
  }

  const statIcons = manaAmountKeys.map((color: string, index) => (
    <div className="row p-1">
      <img
        key={index}
        alt="mana symbol"
        className="manaStatIcon col-2"
        src={manaAmount[color as keyof typeof manaAmount].path}
      />

      <div className="row col-10">
        {makeManaChart(manaAmount[color as keyof typeof manaAmount])}
      </div>
    </div>
  ));

  return (
    <div className=" m-0 p-0 mt-2 col-2 text-light ">
      STATS:
      <div className="deckStats container-fluid p-1">{statIcons}</div>
      <div className="d-flex justify-content-end mr-2">
        <span>{props.deck.length}</span> /
        <span>{props.type === "60 Cards Deck" ? " 60" : " 100"}</span>
      </div>
    </div>
  );
}
export default DBStats;
