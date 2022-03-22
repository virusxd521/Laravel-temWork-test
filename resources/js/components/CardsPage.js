import Fade from "react-reveal/Fade";
import Card from './card/Card';
import {useState, useEffect} from 'react';
import axios from "axios";


function CardsPage() {

    const [playersNumber, setPlayersNumber] = useState(0);
    const [staffsNumber, setStaffsNumber] = useState(0);
    const [organizationsNumber, setOrganizationsNumber] = useState(0);
    
    const urls = ['/api/players', '/api/staff', '/api/organization'];

    useEffect(() => {
        urls.map(url => {
            axios.get(url)
            .then(data => {
                // console.log(data.data);
                switch(url){
                    case url.includes('players'):
                        setPlayersNumber(data.data) 
                    case url.includes('staff'):
                        setStaffsNumber(data.data)
                    case url.includes('organization'):
                        setOrganizationsNumber(data.data)
                }
            })          
        })
    }, []);
 
    return (
        <section>
                <Fade top><h2>Are you looking for... </h2></Fade>
                <div className="wrapper">
                    <Fade bottom delay={300}><Card title="Player" number={playersNumber} img="card__image"  /></Fade>
                    <Fade bottom delay={400}><Card title="Team" number={staffsNumber} img="card__image" /></Fade>
                    <Fade bottom delay={500}><Card title="Staff" number={organizationsNumber} img="card__image" /></Fade>
                </div>
            
        </section>
    )
}

export default CardsPage;