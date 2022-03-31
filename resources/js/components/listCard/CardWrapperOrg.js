import axios from "axios";
import ListCardOrg from "./ListCardOrg";
import { useState, useEffect } from "react";
import Header from "../Header";

function CardWrapperOrg() {
  const [info, setInfo] = useState({});
  const url = "/api/martin";

  useEffect(() => {
    axios.get(url).then((response) => {
      setInfo(response.data);
    });
  }, []);
  return (
    <section className="players__list">
      <Header />
      {Object.keys(info).length !== 0 ? (
        <div className="players__list__card">
          {info.map((item, i) => (
            <ListCardOrg item={item} />
          ))}
        </div>
      ) : null}
    </section>
  );
}

export default CardWrapperOrg;
