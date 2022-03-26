import React from "react";



function UI_card({title}) {
    return (<>
        <div class="UI_card">
            <h2 className="UI_card__title">{title}</h2>
            {/* <button class="UI_card__button">Register</button> */}
        </div>
        </>
    )
}

export default UI_card;