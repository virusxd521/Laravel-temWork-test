import axios from "axios";
import ListCardStaff from "./ListCardStaff";
import { useState,useEffect } from "react";
import Header from "../Header";


function CardWrapperStaff() {
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
      <div className="card-wrapper">
      {info.map((item, i) => (
        <ListCardStaff item={item}/>
      ))} 
    </div>
    : null
    }
    </section>
    
    
  );
}

export default CardWrapperStaff;
