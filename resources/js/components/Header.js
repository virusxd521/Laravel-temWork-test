import { useRef, useEffect } from 'react';
import { gsap } from 'gsap';
import { ScrollTrigger } from 'gsap/ScrollTrigger';


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

    // const [scrollState, setScrollState] = useState(window.pageYOffset)
  
    // useEffect(() => {
    //     window.addEventListener('scroll', () => {
    //         setScrollState(window.pageYOffset)
    //     })
    // })

    // const divStyle = {
    //     height: 500-scrollState+"px"
    // }

    // console.log(scrollState)

    return (
        <section className="home" ref={ref}>
            <nav>
                <img className="logo" src="/images/logo.png" alt="logo" />
                <ul>
                    <li><a>Login</a></li>
                    <li><a>Register</a></li>
                </ul>
            </nav>
            
        </section>
    )
}

export default Header;