import React from "react";
import "./App.css";
import Card from "./components/Card";
import Navigator from "./components/Navigator";
import settings from "./settings";
import prepareCardData from "./functions/prepareCardData";
import extractFileNameFromPath from "./functions/extractFileNameFromPath";

interface sqlCardData {
  id: number;
  set: string;
  amount: number;
  name: string | null;
  color: string | null;
  number: number;
}
export interface cardAmounts {
  setCode: string;
  amounts: {};
}
function App() {
  const initialLoad = React.useRef(true);
  const [cardAmounts, setCardAmounts] = React.useState<cardAmounts>({
    setCode: "MIB",
    amounts: {},
  });
  const cardPaths = prepareCardData(settings, cardAmounts.setCode);
  //contact server to get SQL data for a card set
  async function getCardAmounts(setCode: string) {
    const data = await fetch("http://localhost:3500/", {
      method: "post",
      body: JSON.stringify({
        set: setCode,
      }),
      headers: { "Content-type": "application/json" },
    });
    const dataParsed = await data.json();
    // take ALL sql data from server and turns it to an obj of {num:amount} format
    const usableSetData = dataParsed.reduce(
      (previous: {}, current: sqlCardData) => {
        return { ...previous, [current.number]: current.amount };
      },
      {}
    );
    //set cardAmounts state to new data from SQL
    setCardAmounts((original) => {
      return { ...original, setCode: setCode, amounts: usableSetData };
    });
  }
  //inital page load SQL request for data
  if (initialLoad.current) {
    initialLoad.current = false;
    getCardAmounts("MIB");
  }

  return (
    <div className="App">
      <Navigator
        getCardAmounts={getCardAmounts}
        setName={settings[cardAmounts.setCode].path}
        cardAmounts={cardAmounts}
      />
      {cardPaths.map((array, index) => (
        <div
          key={index /*index should be fine because order MUST NEVER change*/}
          className="cardsColumn d-flex flex-wrap mb-2"
        >
          {array.map((cardPath) => {
            const data: { key: string; cardNumber: string } =
              extractFileNameFromPath(cardPath);
            const cardSetAmountData = cardAmounts.amounts;
            const amount =
              Object.keys(cardSetAmountData).length === 0
                ? 0
                : cardSetAmountData[
                    data.cardNumber as keyof typeof cardSetAmountData
                  ];
            if (Object.keys(cardSetAmountData).length !== 0) {
              //"IF"because no rerender otherwise
              return (
                <Card
                  key={data.key}
                  img={cardPath}
                  amount={amount}
                  cardNumber={data.cardNumber}
                />
              );
            }
          })}
        </div>
      ))}
    </div>
  );
}

export default App;
