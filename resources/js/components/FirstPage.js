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
                <h1 data-aos="fade-up" className="connections_header">We are connecting people from gaming world</h1>
            </div>
        </section>
    )
}

export default FirstPage;
