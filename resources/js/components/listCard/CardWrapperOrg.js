import axios from "axios";
import ListCardOrg from "./ListCardOrg";
import { useState, useEffect } from "react";
import Header from "../Header";

<<<<<<< HEAD
function CardWrapperOrg() {
=======

function CardWrapperOrg({extractingDate}) {
>>>>>>> master
  const [info, setInfo] = useState({});
  const url = "/api/martin";

  useEffect(() => {
<<<<<<< HEAD
=======
    
// Fix this shit -----------------> Daniel
>>>>>>> master
    axios.get(url).then((response) => {
      setInfo(response.data);
    });
  }, []);
<<<<<<< HEAD
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
=======
  
  

  return (
    <section className="players__list" >
      {console.log('ffff', info)}
    <Header />
    {
      Object.keys(info).length !== 0 ?
      <div className="players__list__card">
      {info.map((item, i) => (
        <ListCardOrg item={item}
          extractingDate={extractingDate}
        />
        
      ))} 
    </div>
    : null
    }
>>>>>>> master
    </section>
  );
}

export default CardWrapperOrg;
