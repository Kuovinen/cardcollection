import { v4 as uuidv4 } from "uuid";
interface DBCardList {
  filteredCards: string[];
}
function DBActualDeck(props: DBCardList) {
  return (
    <div className="cards m-0 p-0 mt-2 col-10 col-xl-8 text-light">
      AVAILABLE CARDS:
      <ul className="p-0 m-0 mr-2">
        {props.filteredCards.map((name) => (
          <li key={uuidv4()} className="cardName text-light row p-0 m-1">
            <p className="col-8 p-0 m-0 d-inline-block">{name}</p>
            <div className="crdNameBtns col-4 d-inline-block p-0 m-0">
              <button className="crdNameBtns p-0 m-0 col-6">-</button>
              <button className="crdNameBtns p-0 m-0 col-6">+</button>
            </div>
          </li>
        ))}
      </ul>
    </div>
  );
}
export default DBActualDeck;
