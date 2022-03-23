import Card from './card/Card';
import {useState, useEffect} from 'react';
import axios from "axios";

import Aos from 'aos'
import 'aos/dist/aos.css'

function CardsPage() {

    const [playersNumber, setPlayersNumber] = useState(0);
    const [staffsNumber, setStaffsNumber] = useState(0);
    const [organizationsNumber, setOrganizationsNumber] = useState(0);
    
    const urls = ['/api/players', '/api/staff', '/api/organization'];

    const filteringApi = (url, data) => {
    
        const regexpLastWord = /(api\/)(=?)(\w+)/;
        switch(url.match(regexpLastWord)[3]){
            case 'players':
            
            setPlayersNumber(data.data) 
                break;
            case 'staff':
                setStaffsNumber(data.data)
                break;
            case 'organization':
                setOrganizationsNumber(data.data.number)
                break;
            }
    }
    useEffect(() => {
        urls.map(url => {
            axios.get(url)
            .then(data => {
                filteringApi(url, data);
            })          
        })
        Aos.init({ duration: 1000 })
    }, []);

    return (
        <section className="second-page">
                <h2 data-aos="fade-up" >Are you looking for... </h2>
                <div className="wrapper">
                    <Card title="Players" number={playersNumber} img="card__image" delay="0" />
                    <Card title="Team" number={staffsNumber} img="card__image" delay="200" />
                    <Card title="Staff" number={organizationsNumber} img="card__image" delay="400" />
                </div>
            
        </section>
    )
}

export default CardsPage;