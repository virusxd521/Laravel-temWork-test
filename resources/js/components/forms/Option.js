
const Option = ({responseData, propOption}) => {
    return (
        <select name={propOption} className="form__select" id={`${propOption}`}
            form="player_form"
        >
            {responseData.map(item => {
                return !!item[propOption] ?
                item[propOption].map( innerItem =>{
                    return <option value={innerItem}>{innerItem}</option>
                }) : null
                })}        
        </select>
    )
}

export default Option;