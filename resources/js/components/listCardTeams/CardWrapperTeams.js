import axios from "axios";
import ListCardTeams from "./ListCardTeams";
import { useState, useEffect } from "react";
import Header from "../Header";


function CardWrapperTeams() {
  const [info, setInfo] = useState({});
  const url = "/api/martin";
  

  useEffect(() => {
    

    axios.get(url).then((response) => {
      setInfo(response.data);
    });

  }, []);
  console.log(info[0]);

  return (
    <section className="teams__list" >
    <Header classa="header-short" />
    {
      Object.keys(info).length !== 0 ?
      <div className="teams__list__card">
      {info.map((item, i) => (
        <ListCardTeams item={item}/>
      ))} 
    </div>
    : null
    }
    </section>
    
    
  );
}

export default CardWrapperTeams;
