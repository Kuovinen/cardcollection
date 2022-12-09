import { v4 as uuidv4 } from "uuid";

interface DBActualDeckProps {
  deck: number[];
}
function DBActualDeck(props: DBActualDeckProps) {
  return (
    <div className="actualDeck row p-2 d-flex">
      {props.deck.map((element, index) => (
        <div key={uuidv4()} className="deckCard text-light"></div>
      ))}
    </div>
  );
}
export default DBActualDeck;
