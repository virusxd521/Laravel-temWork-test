import React, { useEffect, useState } from 'react';
import ReactDom from 'react-dom';
import {Routes, Route, useParams, useNavigate} from 'react-router-dom' ;
import Homepage from './components/Homepage'
import Login from './components/login/Login'
import Register from './components/register/Register'
import UserInterface from './components/userInterface/UserInterface'
import CardWrapper from './components/listCard/CardWrapper';
import PlayerForm from './components/forms/PlayerForm';
import Page404 from './components/page404/Page404';
import Organization from './components/forms/Organization';
import StaffForm from './components/forms/StaffForm';



const AppMain = () => {

    // response after login saving the data to pass to the right profile
    const [responseData, setResponseData] = useState({});
    let navigate = useNavigate();
    
    // function for setting the state with the response from the server 
    const functSettingData = data => {
        setResponseData(data);
    } 

    // calling useEffect after the data from the response is set
    // Then i will call a function which will set the parameters 
    useEffect(() => {
        Object.keys(responseData).length !== 0 ? settingRouteId(responseData) : null;
    }, [responseData]);


    // function which will set the query parameter 
    // so that it will show the id or name of the right user 
    const settingRouteId = data => { 
        console.log(responseData);
        navigate(`/profile/${data.id}`);
    }

    return (
        <Routes>
            <Route path="/" element={ <Homepage />} />
            <Route path="/login" element={<Login responsePassingUp={functSettingData} /> }   /> 
            <Route path="/register" element={<Register />} /> 
            <Route path="/register/player" element={<PlayerForm />} />
            <Route path="/register/team" element={<Organization />} />
            <Route path="/register/staff" element={<StaffForm />} />
            <Route path="/list/players" element={<CardWrapper />} />
            <Route path="/profile" element={<UserInterface responseData={responseData} />} >
                <Route path=":user_id" element={<UserInterface responseData={responseData}/>} />
            </Route>

            {/* <Route path="*" element={<Page404 />} /> */}
        </Routes>
    )
}

export default AppMain;