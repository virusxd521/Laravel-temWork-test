import Aos from 'aos'
import 'aos/dist/aos.css'
import { useEffect } from 'react'

function FirstPage() {

    useEffect(() => {
        Aos.init({ duration: 1000 })
    }, []);

    return(
        <section className="first-page">
            <div className="intro">
                <h1 data-aos="fade-up" data-aos-anchor-placement="top-center" className="connections_header">We are proudly connecting all professionals and organizations in the gaming industry</h1>
            </div>
        </section>
    )
}

export default FirstPage;
