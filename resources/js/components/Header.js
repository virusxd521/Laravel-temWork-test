import { useRef, useEffect } from 'react';
import { gsap } from 'gsap';
import { ScrollTrigger } from 'gsap/ScrollTrigger';
import {Link} from 'react-router-dom';


function Header() {

    gsap.registerPlugin(ScrollTrigger);
    const ref = useRef(null);

    useEffect(() => {
        const element = ref.current;
        gsap.fromTo(
            element.querySelector(".logo"),
            {
                width: '100%'
                
            },
            {
                width: '5%',
                height: '5%',
                top: '2rem',
                left: '3rem',
                x: '50%',
                y: '5%',
                scrollTrigger: {
                    trigger: element.querySelector(".home"),
                    start: '0%',
                    end: '30%',
                    scrub: 1
                    
                }
            }
        )
    }, []);


    return (
        <section className="home" ref={ref}>
            <nav>
                <img className="logo" src="/images/logo.png" alt="logo" />
                <ul>

                    <Link to={`/login`} >Login</Link>
                    <Link to={`/register`} >Register</Link>
                </ul>
            </nav>
            
        </section>
    )
}

export default Header;