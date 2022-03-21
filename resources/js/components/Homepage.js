import Fade from 'react-reveal/Fade';

function Homepage() {
    return(
        <section className="first-page">
            <div className="intro">
                <Fade top><h1 class="connections_header">We are connecting people</h1></Fade>
                <Fade bottom><img className="connections" src="/images/bg.jpg" alt="connections" /></Fade>
            </div>
        </section>
    )
}

export default Homepage;