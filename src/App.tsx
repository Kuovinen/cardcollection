import React from "react";
import "./App.css";
import Card from "./components/Card";
import settings from "./settings";
import prepareCardData from "./prepareCardData";
function App() {
  const cardPaths = prepareCardData(settings);
  return (
    <div className="App">
      {cardPaths.map((array) => (
        <div className="cardsColumn d-flex flex-wrap mb-2">
          {array.map((cardPath) => (
            <Card img={cardPath} />
          ))}
        </div>
      ))}
    </div>
  );
}

export default App;
