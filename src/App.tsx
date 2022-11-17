import React from "react";
import "./App.css";
import Card from "./components/Card";
import settings from "./settings";
import prepareCardData from "./functions/prepareCardData";
import extractFileNameFromPath from "./functions/extractFileNameFromPath";
function App() {
  const cardPaths = prepareCardData(settings);

  return (
    <div className="App">
      {cardPaths.map((array) => (
        <div className="cardsColumn d-flex flex-wrap mb-2">
          {array.map((cardPath) => {
            const data: { key: string; cardNumber: string } =
              extractFileNameFromPath(cardPath);
            return <Card img={cardPath} cardNumber={data.cardNumber} />;
          })}
        </div>
      ))}
    </div>
  );
}

export default App;
