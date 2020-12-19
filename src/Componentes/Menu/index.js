import {Link, withRouter} from "react-router-dom"
import "./Menu.css"

function BaseMenu(props) {
    const { location } = props
    return(
        <nav className="navbar navbar-expand-lg fixed-top navbar-dark  ">
            <a  className="navbar-brand" href="/">
                FL MUSIC
            </a>

            <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-links" 
                aria-controls="navbar-links" aria-expanded="false" aria-label="Toggle navigation">
                <span className="navbar-toggler-icon"></span>
            </button>
            

            <div className="collapse  navbar-collapse" id="navbar-links">
                <ul className="ml-auto navbar-nav ">
                    <li className="nav-item-active ">
                        <a as={Link} className="nav-link " href="/">HOME</a>
                    </li>

                    <li className="nav-item">
                        <a as={Link} className="nav-link" href="/produtos">PRODUTOS</a>
                    </li>

                    <li className="nav-item">
                        <a as={Link}  className="nav-link" href="/lojas">LOJAS</a>
                    </li>

                    <li className="nav-item">
                        <a as={Link}  className="nav-link" href="/contato">FALE CONOSCO</a>
                    </li>

                    <li className="nav-item">
                        <a as={Link}  className="nav-link" href="/pedidos">MEUS PEDIDOS</a>
                    </li>

                    <li className="nav-item">
                        <a as={Link}  className="nav-link" href="/formulario">CADASTRE-SE</a>
                    </li>
                </ul>
            </div>
        </nav>
    )
}
const Menu = withRouter(BaseMenu);

export default Menu