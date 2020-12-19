import { BrowserRouter } from 'react-router-dom'
import Rotas from './rotas'
import Menu from './Componentes/Menu'
import './App.css'

function App() {
  return (
    <BrowserRouter>
      <div className="App">
        <header>
          <Menu/>
        </header>
        <main>
          <Rotas/>
          
        </main>
       
      </div>
    </BrowserRouter>
    
  );
}

export default App;
