interface DBCardList {
  filteredCards: string[];
}
function DBActualDeck(props: DBCardList) {
  return (
    <div className="cards m-0 p-0 mt-2 col-10 col-xl-8 text-light">
      AVAILABLE CARDS:
      <ul>
        {props.filteredCards.map((name) => (
          <li className="cardName text-light row">
            <span className="col-8">{name}</span>{" "}
            <div className="crdNameBtns col-4 d-inline-block">
              <button className="crdNameBtns col-5">-</button>
              <button className="crdNameBtns col-5">+</button>
            </div>
          </li>
        ))}
      </ul>
    </div>
  );
}
export default DBActualDeck;
