import axios from 'axios';
import { useEffect } from 'react';
import Header from '../Header'

function Page404({authenticatedUser, signingOut}) {
    


    console.log('xxxx', authenticatedUser);

    // Signing out the user when we move to this route
    useEffect(() => {
        axios.get('/api/logout').then( response => {
            signingOut(response.signed_out);
            // console.log('sss',response);
        });
    },[]);

    return (
        <>
            <Header/>
            <section className="section404">
                <h1 className="section404__title">404</h1>
                <h2 className="section404__subtitle">Page not found</h2>
            </section> 
        </>
    )
}

export default Page404;