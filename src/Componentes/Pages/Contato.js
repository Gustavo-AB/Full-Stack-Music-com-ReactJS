export default function Contato() {
    return(
        <div class="container">
            <div class="jumbotron">
                <form class="form" action="#">
                    <div class="form-group">
                        <label for="nome">Nome</label>
                        <input class="form-control" type="text" name="nome" id="nome"/>
                    </div>
                    <div class="form-group">
                        <label for="msg">Deixe Aqui Sua Mensagem</label>
                        <textarea class="form-control" name="msg" id="msg" cols="30" rows="10"></textarea>
                    </div>
                </form>
            </div>      
        </div>
    )
}