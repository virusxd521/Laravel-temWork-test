import react, { useRef, useEffect } from 'react';
import { gsap } from 'gsap';
import { ScrollTrigger } from 'gsap/ScrollTrigger';
import { Link, useLocation, useNavigate } from 'react-router-dom';
import { useContext } from 'react';
import { UserContext } from '../context/context';
import { Fragment } from 'react';


function Header({height, classa, signingOut, authenticatedUser}) {

    

// user context 
  const { user, setUser} = useContext(UserContext)


//   animations logo

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
                x: '56%',
                y: '5%',
                position: 'fixed',
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
    console.log(authenticatedUser);
    
    return (
        <section className={classa} ref={ref} style={{height: height + 'em'}}>
            <nav>
                {(path.pathname === '/') && (<img onClick={() => navigate('/')} className="logo" src="/images/logo.svg" alt="logo" />)}
                {(path.pathname !== '/') && (<img onClick={() => navigate('/')} className="logo-fixed" src="/images/logo.svg" alt="logo" />)}

                <ul>
                    {
                        !user && <Fragment>

                            <Link to={`/login`} className="nav-ltr" >Login</Link>
                            <Link to={`/register`} className="nav-ltr" >Register</Link>
                        </Fragment>
                    }
                        <Link to={`/profile`} className="nav-ltr" >Profile</Link>
                        <Link to={`/logout`} className="nav-ltr" onClick={signingOut} >Logout</Link>

                </ul>
            </nav>
            
        </section>
    )
}

export default Header;