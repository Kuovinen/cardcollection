import { v4 as uuidv4 } from "uuid";
import { cardData } from "../../DeckBuilder";
import settingsType from "../../settings"; //just the type
interface DBActualDeckProps {
  deck: cardData[];
}

function DBActualDeck(props: DBActualDeckProps) {
  function createDeck() {
    let deckCards: JSX.Element[] = [];
    function makeCard(card: cardData) {
      const path = `/assets/${settingsType[card.set].path}/${card.set}_${
        card.number
      }.jpg`;
      const style = {
        backgroundImage: `url(${path})`,
        backgroundSize: `contain`,
      };
      return <div key={uuidv4()} style={style}></div>;
    }
    console.log(props.deck[0]);
    if (props.deck.length > 0) {
      deckCards = props.deck.map((element, index) => {
        const card = makeCard(element);
        return card;
      });
    }
    console.log(deckCards);
    return deckCards;
  }
  const deckCards = createDeck();
  return <div className="actualDeck row p-2 d-flex">{deckCards}</div>;
}
export default DBActualDeck;
