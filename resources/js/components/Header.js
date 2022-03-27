import react, { useRef, useEffect } from 'react';
import { gsap } from 'gsap';
import { ScrollTrigger } from 'gsap/ScrollTrigger';
import { Link, useLocation, useNavigate } from 'react-router-dom';


function Header({height}) {

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
                width: '15%',
                height: '15%',
                top: '1.5rem',
                left: '-1rem',
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

    const navigate = useNavigate(); 

    const path = useLocation();

    console.log(path);


    return (
        <section className="home" ref={ref} style={{height: height + 'em'}}>
            <nav>
                {(path.pathname === '/') && (<img onClick={() => navigate('/')} className="logo" src="/images/logo.svg" alt="logo" />)}
                {(path.pathname === '/login') && (<img onClick={() => navigate('/')} className="logo-fixed" src="/images/logo.svg" alt="logo" />)}
                {(path.pathname === '/register') && (<img onClick={() => navigate('/')} className="logo-fixed" src="/images/logo.svg" alt="logo" />)}

                <ul>

                    <Link to={`/login`} className="nav-ltr" >Login</Link>
                    <Link to={`/register`} className="nav-ltr" >Register</Link>
                </ul>
            </nav>
            
        </section>
    )
}

export default Header;