import React from "react";
import "./App.css";
import Collector from "./Collector";
import DeckBuilder from "./DeckBuilder";
function App() {
  const [module, setModule] = React.useState("collector");
  function changeModule() {
    setModule((original) =>
      original === "collector" ? "deckBuilder" : "collector"
    );
  }
  ////////////////////////////////////////////////////////////////////////RETURN
  return (
    <div>
      {module === "deckBuilder" ? (
        <Collector changeModule={changeModule} />
      ) : (
        <DeckBuilder changeModule={changeModule} />
      )}
    </div>
  );
}

export default App;
