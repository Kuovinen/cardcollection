import CardZoom from "./CardZoom";
import DBActualDeck from "./DeckBMain/DBActualDeck";
import DBCardList from "./DeckBMain/DBCardList";
import DBStats from "./DeckBMain/DBStats";
import "./DeckBMain.css";
interface DBMainProps {
  zoomCard: string;
  filteredCards: string[];
  deck: number[];
}

function DeckBMain(props: DBMainProps) {
  return (
    <main>
      <div className="row ml-2 mr-4 flex-nowrap p-0 m-0">
        <DBCardList filteredCards={props.filteredCards} />
        <DBStats />
        <CardZoom zoomCard={props.zoomCard} />
      </div>
      <DBActualDeck deck={props.deck} />
    </main>
  );
}
export default DeckBMain;
