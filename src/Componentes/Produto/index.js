import './Produto.css'

export default function Produto(props) {
    return (
        <div className="container-produtos">
            {/*<?php 
            $dados_json = file_get_contents("http://localhost/FullStackMusic/getContent.php?table=produtos");
    
            $dados = json_decode($dados_json, true);
    
            foreach ($dados as $key => $row) {
    
            
            ?>*/}
            <div className="box_produtos">
            <div className="mb-3 card"  id="box_produtos">
                <img className="card-image-top" src={require(`./imagens/ba1.jpg`).default} width="270px" ></img>
                <div className="card-body">
    
                <div className="card-title">
                {props.descricao} {/*<?php echo $row["descricao"];?>*/}
                </div>{/*<!--card-title-->*/}
    
                <div className="card-text" >
                    <p><small>De</small> <strong>R$ <strike>{props.preco_antigo}{/*<?php echo $row["preco"];?>*/}</strike></strong> <small>Por Apenas</small></p> 
                    <p ><strong>R$ {props.preco}{/* <?php echo $row["precoantigo"];?>*/}</strong><small> à vista</small></p>
                </div>{/*<!--card-text-->*/}
                </div>{/*<!--card-body-->*/}
                <button className="botao"><a href="pedidos.php"><strong>COMPRAR</strong></a></button>
            </div>{/*<!--card-->*/}
            </div>{/*<!--box_produtos-->*/}
            {/*<?php
            }
            ?> */}
        </div>
        
      
    )
}