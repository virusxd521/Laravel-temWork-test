import React, { useState } from "react";
import Header from "../Header";
import UI_card from "./ui_cards/UI_card";
import { useParams } from "react-router-dom";



function UserInterface({responseData, authenticatedUser}) {

    // Getting the parameters data and passing it to the the decendent components with props
    let {user_id} = useParams();
    console.log(user_id);
    return (
        <>
            <Header authenticatedUser={authenticatedUser} classa="header-short" />
            <div className="UI__cnt">
                
                <h1 className="UI__title">Do you want to register as </h1>
                <div className="UI_card__cnt">
                    <UI_card title="Player" destination="/register/player" />
                    <UI_card title="Organization" />
                    <UI_card title="Staff" />
                    
                </div>
            </div>
    
        </>
    )
}

export default UserInterface;