import react, { useRef, useEffect } from 'react';
import { gsap } from 'gsap';
import { ScrollTrigger } from 'gsap/ScrollTrigger';
import { Link, useLocation, useNavigate } from 'react-router-dom';


function Header({height, classa, signingOut}) {

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

    // useEffect(() => {
    //     window.addEventListener('scroll', () => {
    //       setScrollState(window.pageYOffset)
    //     })
    // })

    // const divStyle = {
    //     height: 500-scrollState+"px"
    // }

     // console.log(window.pageYOffset)
    
    const navigate = useNavigate(); 

    const path = useLocation();

    return (
        <section className={classa} ref={ref} style={{height: height + 'em'}}>
            <nav>
                {(path.pathname === '/') && (<img onClick={() => navigate('/')} className="logo" src="/images/logo.svg" alt="logo" />)}
                {(path.pathname !== '/') && (<img onClick={() => navigate('/')} className="logo-fixed" src="/images/logo.svg" alt="logo" />)}

                <ul>

                    <Link to={`/login`} className="nav-ltr" >Login</Link>
                    <Link to={`/register`} className="nav-ltr" >Register</Link>

                    <Link to={`/profile`} className="nav-ltr" >Profile</Link>
                    <Link to={`/logout`} className="nav-ltr" onClick={signingOut} >Logout</Link>
            
                    
                </ul>
            </nav>
            
        </section>
    )
}

export default Header;