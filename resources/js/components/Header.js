import react, { useRef, useEffect, useState, useLayoutEffect, useMemo } from 'react';
import { gsap } from 'gsap';
import { ScrollTrigger } from 'gsap/ScrollTrigger';
import { Link, useLocation, useNavigate } from 'react-router-dom';
import { useContext } from 'react';
import { UserContext } from '../context/context';
import { Fragment } from 'react';
import axios from 'axios';


function Header({classa}) {
    
    const signingOut = async(e) => {
        console.log("clicked")
        e.preventDefault()
        const res = await axios.post('/api/logout')
    
        console.log('heyyyy', res)
        setUser(null)
        alert('You have successfully logged out')
        navigate('/')
    }
    
    // user context 
    const { user, setUser} = useContext(UserContext)

    // const screen = useMemo(() => ({ screenSize, setScreenSize }), [screenSize]);
    // console.log(screen)

    const [screenSize, setScreenSize] = useState([])

    useLayoutEffect(() => {
    
        window.addEventListener('resize', () => setScreenSize([window.innerWidth]));
    
        setScreenSize([window.innerWidth])
    
        return () => window.removeEventListener('resize', () => setScreenSize([window.innerWidth]));
    
      }, []);

    //   logo animation
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
                width: '8%',
                height: '8%',
                top: '1.5rem',
                left: '1rem',
                x: '70%',
                y: '5%',
                position: 'fixed',
                scrollTrigger: {
                    trigger: element.querySelector(".header"),
                    start: '0%',
                    end: '30%',
                    scrub: 1
                    
                }
            }
        )
    }, [ref.current]);

    

    const navigate = useNavigate(); 

    const path = useLocation();
    
    return (
        <section className={classa} ref={ref} >
            <nav>
                {(path.pathname === '/') && (<img onClick={() => navigate('/')} className={screenSize[0] > 1023 ? "logo" : "logo-fixed"} src="/images/logonew.svg" alt="logo" />)}
                {(path.pathname !== '/') && (<img onClick={() => navigate('/')} className="logo-fixed" src="/images/logonew.svg" alt="logo" />)}
                <ul>
                    {
                        user ? <Fragment>

                        
                        <Link to={`/profile`} className="nav-ltr" >Profile</Link>

                        </Fragment> : <Fragment>

                            <Link to={`/login`} className="nav-ltr" >Login</Link>
                            <Link to={`/register`} className="nav-ltr" >Register</Link>
                        </Fragment>
                    }
                        {
                            user && <Link to={`/`} className="nav-ltr" onClick={(e ) => signingOut(e)} >Logout</Link>
                        }

                </ul>
            </nav>
            
        </section>
    )
}

export default Header;