export default function Formulario() {
    return (
        <div className="container">
            <div className="my-5 jumbotron">
                <form className="form" action="recebecadastro.php" method="post">
                    <h2 className="display-4">Dados Pessoais</h2>
                        <hr></hr>
                        <div className="form-group">
                            <div className="row">
                                <div className="col">
                                    <label for="nome">Nome*</label>
                                    <input className="form-control" type="text" name="nome" id="nome" placeholder="Nome"></input>
                                </div>

                                <div className="col">
                                    <label for="spbrenome">Sobrenome*</label>
                                    <input className="form-control" type="text" name="sobrenome" id="sobrenome"
                                        placeholder="Sobrenome"></input>
                                </div>
                            </div>
                        </div>
                    
                        <div className="form-group">
                            <div className="row">
                                <div className="col">
                                    <label for="cpf">CPF*</label>
                                    <input className="form-control" type="number" name="cpf" id="cpf" placeholder="CPF"></input>
                                </div>

                                <div className="col">
                                    <label for="rg">RG*</label>
                                    <input className="form-control" type="number" name="rg" id="rg" placeholder="RG"></input>
                                </div>
                            </div>
                        </div>
                        
                        <div className="form-group">
                            <label for="nascimento">Data de Nascimento</label>
                            <input className="form-control" type="date" name="data_nascimento" id="data_nascimento"></input>
                        </div>
                    
                        <div className="form-group">
                            <label className="form-check-label" for="sexo">Sexo*:</label>
                            <input className="form-control" type="text" name="sexo" id="sexo" placeholder="Sexo"></input>
                        </div>
                        
                        <div className="form-group">
                            <div className="row">
                                <div className="col">
                                    <label for="telefone_prin">Telefone Principal*</label>
                                    <input className="form-control" type="number" name="telefone_prin" id="telefone_prin"
                                        placeholder="Princial"></input>
                                </div>

                                <div className="col">
                                    <label for="telefone_sec">Telefone Secundario</label>
                                    <input className="form-control" type="number" name="telefone_sec" id="telefone_sec"
                                        placeholder="Secundario"></input>
                                </div>
                            </div>
                        </div>

                        <h2 className="display-4">Endereço</h2>
                        <hr></hr>
                        <div className="form-group">
                            <label for="lograduro">Lograduro*</label>
                            <input className="form-control" type="text" name="lograduro" id="lograduro" placeholder="Avenida, Rua e etc"></input>
                        </div>

                        <div className="form-group">
                            <div className="row">
                                <div className="col">
                                    <label for="cep">CEP*</label>
                                    <input className="form-control" type="number" name="cep" id="cep"
                                        placeholder="CEP"></input>
                                        <small><a href="https://buscacepinter.correios.com.br/app/endereco/index.php?t" target="_blank">Não
                                        sabe seu CEP?</a>
                                        </small>
                                </div>

                                <div className="col-3">
                                    <label for="numero">Numero*</label>
                                    <input className="form-control" type="number" name="numero" id="numero"
                                        placeholder="Numero da Residencia"></input>
                                </div>

                                <div className="col-3">
                                    <label for="comlemento">Complemento</label>
                                    <input className="form-control" type="text" name="complemento" id="complemento"
                                        placeholder="Complemento"></input>
                                </div>
                            </div>
                        </div>

                        <div className="form-group">
                            <div className="row">
                                <div className="col">
                                    <label for="bairro">Bairro*</label>
                                    <input className="form-control" type="text" name="bairro" id="bairro" placeholder="Bairro"></input>
                                </div>

                                <div className="col">
                                    <label for="cidade">Cidade*</label>
                                    <input className="form-control" type="text" name="cidade" id="cidade" placeholder="Cidade"></input>
                                </div>

                                <div className="col">
                                    <label for="estado">Estado*</label>
                                    <input className="form-control" type="text" name="estado" id="estado" placeholder="Estado"></input>
                                </div>
                            </div>
                        </div>
                    
                        <h2 className="display-4">Dados de Acesso</h2>
                        <hr></hr>
                        <div className="form-group">
                            <label for="email">Email*</label>
                            <input className="form-control" type="email" name="email" id="email" placeholder="Emal"></input>
                        </div>

                        <div className="form-group">
                            <label for="senha">Senha*</label>
                            <input className="form-control" type="password" name="senha" id="senha" placeholder="Senha"></input>
                        </div>

                        <input className="btn btn-lg btn-primary" type="submit" value="Finalizar Cadastro" name="enviar" id="enviar"></input>
                </form>
            </div>
        </div>
    
    )
}