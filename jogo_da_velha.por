/*
  NOME: Diogo Oliveira Santos
  Projeto de aprendizagem 01
  Jogo da velha
 */
programa {
  

	funcao funcaoContinuar(){
		cadeia enter
		escreva("Pressione ENTER para continuar...")
		leia(enter)
		escreva(enter)
	}
	funcao imprimeMenuPrincipal(){
		escreva("BEM VINDO HUMANOS!!! \n")
		escreva("----------JOGO DA VELHA-------------------\n")
		//TODO - Melhorar este menu principal
	}
	funcao imprimeInstrucoes(){  
		//TODO - revisar estas instruções 
		escreva("INSTRUÇÕES:\n")
		escreva("1 - Este é um jogo para 2 humanos\n")
		escreva("2 - A cada jodaga, será solicitada ao jogador da vez, para informar uma posição para ser marcada na tela\n")
		escreva("3 - Se a posição estiver disponivel, ela ficará marcada com o simbolo do jogador\n")
		escreva("4 - Se estiver indisponivel, uma mensagem de erro será informada, e será solicitado uma nova posição ao jogador\n")
		escreva("CONDIÇÃO PARA VITORIA\n")
		escreva("A- A vitória será dada ao jogador que primeiro conseguir marcar com o seu simbolo tres posições na vertical, horizontal ou diagonal da tabela\n")
		escreva("B - Será considerado empate, se não houver mais posições disponiveis para serem marcadas que permite um jogador chegar a vitória\n")
		funcaoContinuar()
	}

	funcao imprimeTelaJogo(){
		limpa()
		escreva(" X | X | X \n")
		escreva("---+---+--- \n")
		escreva(" O | O | O \n")
		escreva("---+---+--- \n")
		escreva(" X | O | X \n")
		imprimeRequisicaoUsuario()
	}

	funcao imprimeRequisicaoUsuario(){
		escreva("É a vez do jogador X: \n")
		escreva("Informe a posição desejada(0 - 9): \n")
		funcaoContinuar()
	}
	
  
	//TODO - imprimir menu principal - ok
	//TODO - imprimir as instruções do jogo - ok
	//TODO - imprimir a tela do jogo da velha - ok
	//TODO - Imprimir solicitação de comando do usuario - ok
	//TODO - solicitar ao jogador o comando - doing
	//TODO - solicitar ao segundo jogador o comando
	//TODO - a cada jogada, re-imprimir a tela do jogo da velha
	//TODO - implementar tudo dentro de um laço de repetição
	
	
	/*Esta é a função que o algoritmo irá SEMPRE executar primeiro!!!!! */
	funcao inicio() {
		logico executar = verdadeiro
		caracter continuar
		imprimeMenuPrincipal()
		imprimeInstrucoes()
		faca {
			imprimeTelaJogo()
			escreva("Quer que continue?(1 - para sim / Qlq tcl para sair \n")
			leia(continuar)
			se(continuar != '1'){
				executar = falso
			}
		} enquanto(executar == verdadeiro)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2010; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */