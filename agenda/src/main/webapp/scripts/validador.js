/**
 * Validacao de formulario
 * @author hellysamar
 */
 
 function validar(){
	let nome = formContato.nome.value
	let fone = formContato.fone.value
	if (nome == "") {
		alert('Preencha o campo Nome')
		formContato.nome.focus()
		return false
	} else if (fone == "") {
		alert('Preencha o campo Telefone')
		formContato.fone.focus()
		return false
	} else {
		document.forms["formContato"].submit()
	}
}

function voltar(){
	
}