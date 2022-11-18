import icoIN1 from "../icoIN1.png";
import icoIN4 from "../icoIN4.png";
import icoIN5 from "../icoIN5.png";
import icoKLD from "../icoKLD.png";
import icoAMO from "../icoAMO.png";
import icoGOR from "../icoGOR.png";
import icoMAO from "../icoMAO.png";
import "./Navigator.css";
interface navigatorProps {
  setCardSetCode: React.Dispatch<React.SetStateAction<string>>;
  setName: string;
}

function Navigator(props: navigatorProps) {
  function changeSet(code: string) {
    props.setCardSetCode(() => code);
  }

  return (
    <nav>
      <div>
        <button>
          <img
            src={icoIN1}
            onClick={() => changeSet("IN1")}
            alt="Avacyne Restored Icon"
          />
        </button>
        <button>
          <img
            src={icoIN4}
            onClick={() => changeSet("IN4")}
            alt="Eldritch Moon Icon"
          />
        </button>
        <button>
          <img
            src={icoIN5}
            onClick={() => changeSet("IN5")}
            alt="Shadow Over Innistrad Icon"
          />
        </button>
        <button>
          <img
            src={icoAMO}
            onClick={() => changeSet("AMO")}
            alt="Amonkhet Icon"
          />
        </button>
        <button>
          <img
            src={icoGOR}
            onClick={() => changeSet("GOR")}
            alt="Guilds of Ravnica Icon"
          />
        </button>
        <button>
          <img
            src={icoMAO}
            onClick={() => changeSet("MAO")}
            alt="Magic Origins Icon"
          />
        </button>
        <button>
          <img
            src={icoKLD}
            onClick={() => changeSet("KLD")}
            alt="Kaldheim Icon"
          />
        </button>
      </div>
      <span className="text-light ml-3 font-weight-bold">
        {props.setName.slice(4).replace(/\_/g, " ")}
      </span>
    </nav>
  );
}
export default Navigator;
