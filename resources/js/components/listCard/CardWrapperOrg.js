import axios from "axios";
import ListCardOrg from "./ListCardOrg";
import { useState,useEffect } from "react";
import Header from "../Header";


function CardWrapperOrg({extractingDate}) {
  const [info, setInfo] = useState({});
  const url = "/api/martin";
  

  useEffect(() => {
    

    axios.get(url).then((response) => {
      setInfo(response.data);
      
  
    });

  }, []);
  

  return (
    <section className="players__list" >
    <Header classa="header-short" />
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
    </section>
    
    
  );
}

export default CardWrapperOrg;
