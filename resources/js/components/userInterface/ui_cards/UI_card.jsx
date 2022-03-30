import React from "react";
import { useNavigate } from 'react-router-dom'



function UI_card({ title,destination }) {

    const navigate = useNavigate();

    return (
        <>
            <div className="UI__card" onClick={() => navigate(destination)}>
                <h2 className="UI__card__title">{title}</h2>
            </div>
        </>
    )
}

export default UI_card;