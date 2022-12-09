interface DBActualDeckProps {
  deck: number[];
}
function DBActualDeck(props: DBActualDeckProps) {
  return (
    <div className="actualDeck p-2 d-flex">
      {props.deck.map(() => (
        <div className="deckCard text-light"></div>
      ))}
    </div>
  );
}
export default DBActualDeck;
