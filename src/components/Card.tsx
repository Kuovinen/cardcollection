interface props {
  img: string;
}

function Card(props: props) {
  const mtgCardSize = { width: 6.35, height: 8.9 };
  const scaleCoeff = 0.7; //change this to affect the size of cards on screen
  const cardBKG = {
    backgroundImage: `url(${props.img})`,
    height: `${mtgCardSize.height * scaleCoeff}rem`,
    width: `${mtgCardSize.width * scaleCoeff}rem`,
    backgroundSize: `contain`,
  };

  return (
    <div className="mtgCard" style={cardBKG}>
      l
    </div>
  );
}

export default Card;
