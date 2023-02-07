import { v4 as uuidv4 } from "uuid";
import { cardData } from "../DeckBuilder";
import settings from "../settings";
interface DBActualDeckProps {
  deck: cardData[];
}

function DBActualDeck(props: DBActualDeckProps) {
  function createDeck() {
    let deckCards: JSX.Element[] = [];
    function makeCard(card: cardData) {
      const path = `/assets/${settings[card.set].path}/${card.set}_${
        card.number
      }.jpg`;
      const style = {
        backgroundImage: `url(${path})`,
        backgroundSize: `contain`,
      };
      return <div key={uuidv4()} style={style}></div>;
    }

    //if there are actual cards in the deck, make their HTML elements

    if (props.deck.length > 0) {
      deckCards = props.deck.map((element, index) => {
        const card = makeCard(element);
        return card;
      });
    }

    return deckCards;
  }
  function copyToClip() {
    const textDeck = props.deck.reduce((prev, cur) => {
      return prev + "\n" + 1 + cur.name;
    }, "");
    navigator.clipboard.writeText(textDeck);
  }

  const deckCards = createDeck();
  console.log(props.deck);

  return (
    <div>
      <div className="actualDeck row p-2 d-flex">{deckCards}</div>
      <button className="modSwitchBtn" onClick={() => copyToClip()}>
        COPY DECK AS TXT
      </button>
    </div>
  );
}
export default DBActualDeck;
