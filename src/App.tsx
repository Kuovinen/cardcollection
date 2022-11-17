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
            return (
              <Card
                key={data.key}
                img={cardPath}
                cardNumber={data.cardNumber}
              />
            );
          })}
        </div>
      ))}
    </div>
  );
}

export default App;
