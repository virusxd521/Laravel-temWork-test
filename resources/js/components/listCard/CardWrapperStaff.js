import axios from "axios";
import ListCardStaff from "./ListCardStaff";
import { useState, useEffect } from "react";
import Header from "../Header";

function CardWrapperStaff() {
  const [info, setInfo] = useState({});
  const url = "/api/individual_advertisement";

  useEffect(() => {
    axios.get(url).then((response) => {
      setInfo(response.data);
    });
  }, []);

  return (
    <section className="players__list">
      <Header className="header-short" />
      {Object.keys(info).length !== 0 ? (
        <div className="players__list__card">
          {info.map((item, i) => (
            <ListCardStaff item={item} />
          ))}
        </div>
      ) : null}
    </section>
  );
}

export default CardWrapperStaff;
