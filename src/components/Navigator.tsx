import icoIN1 from "../icoIN1.png";
import icoIN4 from "../icoIN4.png";
import icoIN5 from "../icoIN5.png";
import icoKLD from "../icoKLD.png";
import icoAMO from "../icoAMO.png";
import icoGOR from "../icoGOR.png";
import icoMAO from "../icoMAO.png";
import icoMIB from "../icoMIB.png";
import icoNPH from "../icoNPH.png";
import icoOAT from "../icoOAT.png";
import icoZER from "../icoZER.png";
import "./Navigator.css";
import { cardAmounts } from "../App";
interface navigatorProps {
  getCardAmounts: (setCode: string) => Promise<void>;
  setName: string;
  cardAmounts: cardAmounts;
}

function Navigator(props: navigatorProps) {
  function changeSet(code: string) {
    props.getCardAmounts(code);
  }
  //TO ADD A NEW SET ADD DATA TO THE SETBUTTONS VARIABLE. ALL ELSE IS FINE.
  const setButtons = [
    { icon: icoMIB, setCode: "MIB", alt: "Mirrodin besieged Icon" },
    { icon: icoNPH, setCode: "NPH", alt: "New Phyrexia Icon" },
    { icon: icoIN1, setCode: "IN1", alt: "Avacyne Restored Icon" },
    { icon: icoIN4, setCode: "IN4", alt: "Eldritch Moon Icon" },
    { icon: icoIN5, setCode: "IN5", alt: "Shadow Over Innistrad Icon" },
    { icon: icoAMO, setCode: "AMO", alt: "Amonkhet Icon" },
    { icon: icoGOR, setCode: "GOR", alt: "Guilds of Ravnica Icon" },
    { icon: icoMAO, setCode: "MAO", alt: "Magic Origins Icon" },
    { icon: icoOAT, setCode: "OAT", alt: "Oath of the Gatewatch Icon" },
    { icon: icoZER, setCode: "ZER", alt: "Zendikar rising Icon" },
    { icon: icoKLD, setCode: "KLD", alt: "Kaldheim Icon" },
  ];
  const amountsOject = props.cardAmounts.amounts;
  const totalCardNumber = Object.keys(amountsOject).length;
  const cardsGathered = Object.keys(amountsOject).filter(
    (element) => amountsOject[element as keyof typeof amountsOject] !== 0
  );
  const cardsGatheredAmount = cardsGathered.length;
  const percentCompleted = (cardsGatheredAmount * 100) / totalCardNumber + "";
  const percentCompletedRounded = percentCompleted.slice(0, 4);
  return (
    <nav>
      <div>
        {setButtons.map((element, index) => (
          <button key={index /*never intended to be changed*/}>
            <img
              src={element.icon}
              onClick={() => changeSet(element.setCode)}
              alt={element.alt}
            />
          </button>
        ))}
      </div>
      <span className="text-light ml-3 font-weight-bold">
        {props.setName.slice(4).replace(/\_/g, " ")}
      </span>
      &emsp;{" "}
      <span className="text-light ml-3 font-weight-bold">
        {cardsGatheredAmount} / {totalCardNumber} &emsp;{" "}
        {percentCompletedRounded}%
      </span>
    </nav>
  );
}
export default Navigator;
