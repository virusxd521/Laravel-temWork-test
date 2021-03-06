
import {
    Link
} from "react-router-dom";

import Card from './card/Card';
import { useState, useEffect } from 'react';
import axios from "axios";

import Aos from 'aos'
import 'aos/dist/aos.css'
function CardsPage() {

    const [playersNumber, setPlayersNumber] = useState(0);
    const [staffsNumber, setStaffsNumber] = useState(0);
    const [organizationsNumber, setOrganizationsNumber] = useState(0);

    const [hasError, setError] = useState(false);


    const urls = ['/api/players', '/api/staff', '/api/organization'];

    const filteringApi = (url, data) => {

        const regexpLastWord = /(api\/)(=?)(\w+)/;
        switch (url.match(regexpLastWord)[3]) {
            case 'players':
                setPlayersNumber(data.data)
                break;
            case 'staff':
                setStaffsNumber(data.data)
                break;
            case 'organization':
                setOrganizationsNumber(data.data)
                break;
        }
    }
    useEffect(() => {
        urls.map(url => {
            axios.get(url)
                .then(data => {

                    if(typeof data.data !== "number") {
                        throw ('Error happened, help!!!!')
                    }
                    filteringApi(url, data);
                })
                 .catch(e => {setError(true)})
        })
        Aos.init({ duration: 1000 })
    }, []);

    
    return hasError ? (
        <section className="second-page">
            <h2 data-aos="fade-up" >Sorry, something went wrong... </h2>
           
        </section>
    ) :
    (
        <section className="second-page">
            <h2 data-aos="fade-up" >Are you looking for... </h2>
            <div className="wrapper">
                <Card title="Players" number={playersNumber} img="card__player" delay="0" location="/list/players" />
                <Card title="Organization" number={staffsNumber} img="card__team" delay="200" location="/list/org" />
                <Card title="Staff" number={organizationsNumber} img="card__staff" delay="400" location="/list/staff" />
            </div>

        </section>
    )
}

export default CardsPage;