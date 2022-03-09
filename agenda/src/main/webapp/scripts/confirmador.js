/**
 * Confirmacao de exclusao de um contato
 * @author hellysamar
 * @param idcon
 */
 
 function confirmar(idcon){
	let resposta = confirm("Deseja realmente apagar este contato?")
	if (resposta === true){
		window.location.href = "delete?idcon=" + idcon;
	}
}