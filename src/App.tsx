import React from "react";
import "./App.css";
import Card from "./components/Card";
import Navigator from "./components/Navigator";
import settings from "./settings";
import prepareCardData from "./functions/prepareCardData";
import extractFileNameFromPath from "./functions/extractFileNameFromPath";

function App() {
  const [cardSetCode, setCardSetCode] = React.useState("IN1");
  const cardPaths = prepareCardData(settings, cardSetCode);
  const [cardAmounts, setCardAmounts] = React.useState({});
  async function getCardAmounts() {
    const data = await fetch("http://localhost:3500/");
    const dataParsed = await data.json();
    setCardAmounts(() => dataParsed);
  }

  React.useEffect(() => {
    getCardAmounts();
  }, [cardSetCode]);
  return (
    <div className="App">
      <Navigator
        setCardSetCode={setCardSetCode}
        setName={settings[cardSetCode].path}
      />
      {cardPaths.map((array, index) => (
        <div
          key={index /*index should be fine because order MUST NEVER change*/}
          className="cardsColumn d-flex flex-wrap mb-2"
        >
          {array.map((cardPath) => {
            const data: { key: string; cardNumber: string } =
              extractFileNameFromPath(cardPath);
            const amount1 =
              Object.keys(cardAmounts).length === 0
                ? 0
                : cardAmounts[data.cardNumber as keyof typeof cardAmounts];
            if (Object.keys(cardAmounts).length !== 0) {
              //"IF"because no rerender otherwise
              return (
                <Card
                  key={data.key}
                  img={cardPath}
                  amount={amount1}
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
