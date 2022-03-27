import CardsPage from "./CardsPage";
import FirstPage from "./FirstPage";
import Header from "./Header";
import CardWrapper from "./listCard/CardWrapper";

function Homepage() {
    return(
        <>
            <Header />
            <FirstPage />
            <CardsPage />
            <CardWrapper />
        </>
    )
}

export default Homepage;