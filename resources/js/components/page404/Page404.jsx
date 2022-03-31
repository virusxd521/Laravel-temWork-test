import Header from '../Header'

function Page404() { 

    return (
        <>
            <Header/>
            <section className="section404">
                <h1 className="section404__title">404</h1>
                <h2 className="section404__subtitle">Page not found, try a different path</h2>
            </section> 
        </>
    )
}

export default Page404;