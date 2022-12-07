import "./CardZoom.css";

interface CardZoomProps {
  zoomCard: string;
}

function CardZoom(props: CardZoomProps) {
  const styleZoomCard = {
    backgroundImage: `url(${props.zoomCard})`,
  };

  return (
    <div className=" col-2 p-0 m-0  d-none d-xl-block" id="zoomContainer">
      <div className="zoomCard " style={styleZoomCard}></div>
    </div>
  );
}
export default CardZoom;
