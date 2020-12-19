import {Switch, Route,} from 'react-router-dom';

import Produtos from './Componentes/Pages/Produtos'
import Pedidos from "./Componentes/Pages/Pedidos";
import Formulario from "./Componentes/Formulario"
import Home from "./Componentes/Pages/Home"
import Lojas from './Componentes/Pages/Lojas';
import Contato from "./Componentes/Pages/Contato"

function Rotas () {
    return(
        <Switch>
            <Route exact path="/" component={ Home }/>
            <Route exact path="/produtos" component={ Produtos }/>
            <Route exact path="/pedidos" component={ Pedidos }/>
            <Route exact path="/formulario"  component={ Formulario }/>
            <Route exact path="/lojas"  component={ Lojas }/>
            <Route exact path="/contato"  component={ Contato }/>
        </Switch>
    )
}

export default Rotas;