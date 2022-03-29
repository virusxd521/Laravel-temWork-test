import axios from "axios";
import ListCardPlayer from "./ListCardPlayer";
import { useState,useEffect } from "react";
import Header from "../Header";


function CardWrapperPlayer() {
  const [info, setInfo] = useState({});
  const url = "/api/individual_advertisement";
  

  useEffect(() => {
    

    axios.get(url).then((response) => {
      setInfo(response.data);
      
  
    });

  }, []);
  console.log(info[0]);

  return (
    <section className="players__list" >
    <Header classa="header-short" />
    {
      Object.keys(info).length !== 0 ?
      <div className="players__list__card">
      {info.map((item, i) => (
        <ListCardPlayer item={item}/>
      ))} 
    </div>
    : null
    }
    </section>
    
    
  );
}

export default CardWrapperPlayer;
