import {useState, useEffect} from 'react';

import Produto from "../Produto/index";


export default function Produtos() {
    const [ produtos, setProdutos ]= useState([]);

    useEffect(async () => {
        const resposta = await fetch("http://localhost/APIs/produtos.php")
        const dados = await resposta.json();
        setProdutos(dados);
        console.log(produtos);
    }, []);
 
    return (
        <div className="container">
            <div className="row">
                {produtos && produtos.map(item =>  <Produto imagem={item.jpg} descricao={item.descricao} precoantigo={item.precoantigo} preco={item.descricao} categoria={item.categoria}/>)}
               
            </div>
        </div>
    );
}