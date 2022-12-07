import React from "react";
import "./App.css";
import Card from "./components/Card";
import Navigator from "./components/Navigator";
import settings from "./settings";
import prepareCardData from "./functions/prepareCardData";
import extractFileNameFromPath from "./functions/extractFileNameFromPath";
import CardZoom from "./components/CardZoom";
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
  const [cardAmounts, setCardAmounts] = React.useState<cardAmounts>({
    setCode: "MIB",
    amounts: {},
  });
  const cardPaths = prepareCardData(settings, cardAmounts.setCode);
  const [zoomCard, setZoomCard] = React.useState<string>("");
  ////////////////////////////////Contacts server to get SQL data for a card set
  async function getCardAmounts(setCode: string) {
    const data = await fetch("http://localhost:3500/", {
      method: "post",
      body: JSON.stringify({
        set: setCode,
      }),
      headers: { "Content-type": "application/json" },
    });
    const dataParsed = await data.json();
    // take ALL sql data from server and turns
    //it to an obj of {num:amount} format
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
  React.useEffect(() => {
    getCardAmounts("MIB");
  }, []);
  /////////////////////////////////////////////////////Main function to make cards
  function createCardComponents() {
    const componentArray = cardPaths.map((array, index) => (
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
                setZoomCard={setZoomCard}
              />
            );
          }
        })}
      </div>
    ));
    return componentArray;
  }
  //////////////////////////////////////////////////////////////////////////////
  const componentsArray = React.useMemo(() => {
    return createCardComponents();
  }, [cardAmounts]);
  ////////////////////////////////////////////////////////////////////////RETURN
  return (
    <div className="App">
      <Navigator
        getCardAmounts={getCardAmounts}
        setName={settings[cardAmounts.setCode].path}
        cardAmounts={cardAmounts}
      />
      <div className="container-fluid p-0">
        <div className="main row mr-4 flex-nowrap p-0 m-0">
          <div className="cards m-0 p-0 mt-2  col-12 col-xl-10">
            {componentsArray}
          </div>

          <CardZoom zoomCard={zoomCard} />
        </div>
      </div>
    </div>
  );
}

export default App;
