import React, { useState } from "react";
import Header from "../Header";
import UI_card from "./ui_cards/UI_card";


function UserInterface() {

    const [button, setButton] = useState('false');
    return (
        <>
            <Header />
            <h1 class="UI_title">Do you want to register as ?</h1>
            <div className="UI_card__cnt">
                <UI_card title="Player" />
                <UI_card title="Team" />
                <UI_card title="Staff" />
                
            </div>
        </>
    )
}

export default UserInterface;