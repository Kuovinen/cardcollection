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
import icoBFZ from "../icoBFZ.png";
import icoKAL from "../icoKAL.png";
import icoDOM from "../icoDOM.png";
import icoWOS from "../icoWOS.png";
import icoSOM from "../icoSOM.png";
import icoLRW from "../icoLRW.png";
import icoEVE from "../icoEVE.png";
import icoMOR from "../icoMOR.png";
import icoSHM from "../icoSHM.png";
import icoMRD from "../icoMRD.png";
import icoTHS from "../icoTHS.png";
import icoTHB from "../icoTHB.png";
import icoJOU from "../icoJOU.png";
import icoBNG from "../icoBNG.png";
import icoCHK from "../icoCHK.png";
import icoSOK from "../icoSOK.png";
import icoBOK from "../icoBOK.png";
import icoZEN from "../icoZEN.png";
import icoROE from "../icoROE.png";
import icoWWK from "../icoWWK.png";
import icoALA from "../icoALA.png";
import icoARB from "../icoARB.png";
import icoCON from "../icoCON.png";
import icoSTX from "../icoSTX.png";
import icoELD from "../icoELD.png";
import icoDKA from "../icoDKA.png";
import icoISD from "../icoISD.png";
import React from "react";
import "./Navigator.css";
import { cardAmounts } from "../Collector";
interface navigatorProps {
  getCardAmounts: (setCode: string) => Promise<void>;
  setName: string;
  cardAmounts: cardAmounts;
}
export const setButtons = [
  { icon: icoALA, setCode: "ALA", alt: "Shards of Alara" },
  { icon: icoARB, setCode: "ARB", alt: "Alara Reborn" },
  { icon: icoCON, setCode: "CON", alt: "Conflux" },
  { icon: icoMRD, setCode: "MRD", alt: "Mirrodin" },
  { icon: icoMIB, setCode: "MIB", alt: "Mirrodin besieged Icon" },
  { icon: icoSOM, setCode: "SOM", alt: "Scars if Mirrodin" },
  { icon: icoNPH, setCode: "NPH", alt: "New Phyrexia Icon" },
  { icon: icoISD, setCode: "ISD", alt: "Innistrad" },
  { icon: icoDKA, setCode: "DKA", alt: "Dark Ascension" },
  { icon: icoIN1, setCode: "IN1", alt: "Avacyne Restored Icon" },
  { icon: icoIN4, setCode: "IN4", alt: "Eldritch Moon Icon" },
  { icon: icoIN5, setCode: "IN5", alt: "Shadow Over Innistrad Icon" },
  { icon: icoAMO, setCode: "AMO", alt: "Amonkhet Icon" },
  { icon: icoGOR, setCode: "GOR", alt: "Guilds of Ravnica Icon" },
  { icon: icoMAO, setCode: "MAO", alt: "Magic Origins Icon" },
  { icon: icoKLD, setCode: "KLD", alt: "Kaldheim Icon" },
  { icon: icoKAL, setCode: "KAL", alt: "Kaladesh Icon" },
  { icon: icoDOM, setCode: "DOM", alt: "Dominaria Icon" },
  { icon: icoWOS, setCode: "WOS", alt: "War of the spark" },
  { icon: icoLRW, setCode: "LRW", alt: "Lorwyn" },
  { icon: icoEVE, setCode: "EVE", alt: "Eventide" },
  { icon: icoMOR, setCode: "MOR", alt: "Morningtide" },
  { icon: icoSHM, setCode: "SHM", alt: "Shadowmoor" },
  { icon: icoCHK, setCode: "CHK", alt: "Champions of Kamigawa" },
  { icon: icoSOK, setCode: "SOK", alt: "Saviors of Kamigawa" },
  { icon: icoBOK, setCode: "BOK", alt: "Betrayers of Kamigawa" },
  { icon: icoZEN, setCode: "ZEN", alt: "Zendikar" },
  { icon: icoWWK, setCode: "WWK", alt: "WorldWake" },
  { icon: icoROE, setCode: "ROE", alt: "Rise of the Eldrazi" },
  { icon: icoOAT, setCode: "OAT", alt: "Oath of the Gatewatch Icon" },
  { icon: icoZER, setCode: "ZER", alt: "Zendikar rising Icon" },
  { icon: icoBFZ, setCode: "BFZ", alt: "Battle for Zendikar Icon" },
  { icon: icoTHS, setCode: "THS", alt: "Theros" },
  { icon: icoBNG, setCode: "BNG", alt: "Bord of the gods" },
  { icon: icoJOU, setCode: "JOU", alt: "Journey into Nyx" },
  { icon: icoTHB, setCode: "THB", alt: "Theres beyond death" },
  { icon: icoSTX, setCode: "STX", alt: "Strixhaven" },
  { icon: icoELD, setCode: "ELD", alt: "Throne of Eldraine" },
];
function Navigator(props: navigatorProps) {
  function changeSet(code: string) {
    props.getCardAmounts(code);
  }
  //TO ADD A NEW SET ADD DATA TO THE SETBUTTONS VARIABLE. ALL ELSE IS FINE.

  const amountsOject = props.cardAmounts.amounts;
  const totalCardNumber = Object.keys(amountsOject).length;
  const cardsGathered = Object.keys(amountsOject).filter(
    (element) => amountsOject[element as keyof typeof amountsOject] !== 0
  );
  const cardsGatheredAmount = cardsGathered.length;
  const percentCompleted = (cardsGatheredAmount * 100) / totalCardNumber + "";
  const percentCompletedRounded = percentCompleted.slice(0, 4);
  const [totalCard, setTotalCard] = React.useState<{
    unique: number;
    total: number;
  }>({ unique: 0, total: 0 });
  async function getTotal() {
    const data = await fetch("http://localhost:3500/allCards");
    const dataParsed = await data.json();
    const truncatedArray = dataParsed.filter(
      (element: { amount: number }) => element.amount !== 0
    );
    const totalCardAmount: number = truncatedArray.reduce(
      (prev: number, current: { amount: number }) => {
        return prev + current.amount;
      },
      0
    );
    const stats: {
      unique: number;
      total: number;
    } = {
      unique: truncatedArray.length,
      total: totalCardAmount,
    };
    setTotalCard((original) => {
      return { ...stats };
    });
  }
  return (
    <nav>
      <div style={{ background: "black" }}>
        {setButtons.map((element, index) => (
          <button
            key={index /*never intended to be changed*/}
            className="setIcon"
          >
            <img
              src={element.icon}
              onClick={() => changeSet(element.setCode)}
              alt={element.alt}
            />
          </button>
        ))}
      </div>
      <div className={"row p-0 m-0 flex-wrap"}>
        <div className="col-12 col-lg-10  p-0 m-0 d-flex flex-wrap justify-content-start">
          <div className=" text-light ml-3 font-weight-bold">
            {props.setName.slice(4).replace(/\_/g, " ")}
          </div>
          &emsp;{" "}
          <div className="text-light ml-3 font-weight-bold d-flex flex-nowrap">
            {cardsGatheredAmount} / {totalCardNumber} &emsp;{" "}
            {percentCompletedRounded}%
          </div>
        </div>

        <div className="col-12 col-lg-2 d-flex justify-content-end flex flex-nowrap">
          <div
            className="text-light  flex-nowrap"
            style={{
              display: totalCard.unique === 0 ? "none" : "flex",
            }}
          >
            <div className="number uu">{totalCard.unique}</div> /{" "}
            <div className="number tt"> {totalCard.total}</div>
          </div>
          <button className="statsButton text-light mx-3" onClick={getTotal}>
            Collection
          </button>
        </div>
      </div>
    </nav>
  );
}
export default Navigator;
