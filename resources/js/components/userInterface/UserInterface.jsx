import React, { useState } from "react";
import Header from "../Header";
import UI_card from "./ui_cards/UI_card";


function UserInterface() {

    return (
        <div className="UI_cnt">
            
            <h1 class="UI_title">Do you want to register as </h1>
            <div className="UI_card__cnt">
                <UI_card title="Player" />
                <UI_card title="Organization" />
                <UI_card title="Staff" />
                
            </div>
        </div>
    )
}

export default UserInterface;