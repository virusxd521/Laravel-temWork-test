import axios from "axios";
import ListCard from "./ListCard";
import { useState,useEffect } from "react";

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
    <>
    {
      Object.keys(info).length !== 0 ?
      <div className="card-wrapper">
      {info.map((item, i) => (
        <ListCard item={item}/>
      ))} 
    </div>
    : null
    }
    </>
    
    
  );
}

export default CardWrapper;
