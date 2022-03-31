import React, { useEffect, useState } from 'react';
import ReactDom from 'react-dom';
import {Routes, Route, useParams, useNavigate} from 'react-router-dom' ;
import Homepage from './components/Homepage'
import Login from './components/login/Login'
import Register from './components/register/Register'
import UserInterface from './components/userInterface/UserInterface'
import CardWrapperPlayer from './components/listCard/CardWrapperPlayer';
import PlayerForm from './components/forms/PlayerForm';
import Page404 from './components/page404/Page404';
import OrganizationForm from './components/forms/OrganizationForm';
import StaffForm from './components/forms/StaffForm';
import CardWrapperStaff from './components/listCard/CardWrapperStaff';
import CardWrapperOrg from './components/listCard/CardWrapperOrg';
import { useMemo } from 'react';
import { UserContext } from './context/context';
import axios from 'axios';


const AppMain = () => {

    // response after login saving the data to pass to the right profile
    const [responseData, setResponseData] = useState({});
    let navigate = useNavigate();
    
    // Checking if the user is authenticated
    const [authenticatedUser, SetAuthenticatedUser] = useState(null);


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
        SetAuthenticatedUser(data);
        navigate(`/profile/${data.id}`);
    }
    
    const signingOut = data =>{
        SetAuthenticatedUser(data);
    }

    // user context
    const [user, setUser] = useState(null);

    const value = useMemo(() => ({user,setUser}), [user]);
    
    const userLogin = async() => {
        
        axios.get('/sanctum/csrf-cookie').then(response => {
          });


        const res=await axios.get('/api/user')
        console.log('/api/user',res.data.user)
        if (res?.data?.user) {
            return setUser(res.data.user)
        }
        return setUser(null)
    }

    useEffect(()=> {
        userLogin()
        
    }, [])

    // item.DateOfBirth
    // function for extracting the year from the date
    const extractingDate = year_data => {
        const pattern = year_data;
        const regex = /(\d{1,})(-)/;
        const result = pattern.match(regex);
        return result[1];
    }





    return (
        <UserContext.Provider value={value}>
            <Routes>
                <Route path="/" element={ <Homepage />} />
                <Route path="/login" element={<Login responsePassingUp={functSettingData}
                authenticatedUser={authenticatedUser}
                    
                /> }   /> 
                <Route path="/register" element={<Register />} /> 
                <Route path="/register/player" element={<PlayerForm />} />
                <Route path="/register/team" element={<OrganizationForm />} />
                <Route path="/register/staff" element={<StaffForm />} />
                <Route path="/list/players" element={<CardWrapperPlayer extractingDate={extractingDate} />} />
                <Route path="/list/staff" element={<CardWrapperStaff extractingDate={extractingDate} />} />
                <Route path="/list/org" element={<CardWrapperOrg extractingDate={extractingDate} />} />
                <Route path="/profile" element={<UserInterface responseData={responseData} authenticatedUser={authenticatedUser} />} >
                    <Route path=":user_id" element={<UserInterface responseData={responseData}/>} />
                </Route>
                <Route path="/*" element={<Page404 />} />
            </Routes>
        </UserContext.Provider>
    )
}

export default AppMain;