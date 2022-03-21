import Fade from "react-reveal/Fade";
import Card from './card/Card';


function CardsPage() {
    return (
        <section className="second-page">
                <Fade top><h2>Are you looking for... </h2></Fade>
                <div className="card_cnt">
                    <Fade bottom delay={300}><Card /></Fade>
                    <Fade bottom delay={400}><Card /></Fade>
                    <Fade bottom delay={500}><Card /></Fade>
                </div>
            
        </section>
    )
}

export default CardsPage;