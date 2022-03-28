import axios from "axios";
import ListCard from "./ListCard";
import { useState,useEffect } from "react";
import Header from "../Header";


function CardWrapper() {
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
    <Header height="4.5" />
    {
      Object.keys(info).length !== 0 ?
      <div className="card-wrapper">
      {info.map((item, i) => (
        <ListCard item={item}/>
      ))} 
    </div>
    : null
    }
    </section>
    
    
  );
}

export default CardWrapper;
