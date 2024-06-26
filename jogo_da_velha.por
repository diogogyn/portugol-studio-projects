/*
  NOME: Diogo Oliveira Santos
  Projeto de aprendizagem 01
  Jogo da velha
 */
programa {
	//***********Região para variaveis globais*******************
	caracter posicoes[] = {'1','2','3','4','5','6','7','8','9'}
	caracter jogadorDaVez = 'X'
	inteiro contadorJogadasValidas = 0
	//***********************************************************
	funcao funcaoContinuar(){
		cadeia enter
		escreva("Pressione ENTER para continuar...")
		leia(enter)
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
		escreva(" ",posicoes[0]," | ",posicoes[1]," | ",posicoes[2]," \n")
		escreva("---+---+--- \n")
		escreva(" ",posicoes[3]," | ",posicoes[4]," | ",posicoes[5]," \n")
		escreva("---+---+--- \n")
		escreva(" ",posicoes[6]," | ",posicoes[7]," | ",posicoes[8]," \n")
		imprimeRequisicaoUsuario()
	}

	funcao imprimeRequisicaoUsuario(){
		escreva("É a vez do jogador ",jogadorDaVez,": \n")
		escreva("Informe a posição desejada(1 - 9): \n")
	}
	
	funcao trocaJogador(){
		se(jogadorDaVez == 'X'){//revezar o jogador
			jogadorDaVez = 'O'
		} senao{
			jogadorDaVez = 'X'
		}
	}

	funcao logico validaAcaoUsuario(inteiro opcaoUsuario){
		se(opcaoUsuario < 1 ou opcaoUsuario >9) {
			escreva("ERRO - Opcao invalida. Favor somente valores entre 1 e 9 !!! \n")	
			funcaoContinuar()
			retorne falso
		} senao se(posicoes[opcaoUsuario-1] == 'X' ou posicoes[opcaoUsuario-1] =='O'){
			escreva("ERRO - Esta posição já esta marcada pelo jogador ",posicoes[opcaoUsuario-1]," !!!\n")	
			funcaoContinuar()
			retorne falso
		}
		retorne verdadeiro
	}
		
	/*Esta é a função que o algoritmo irá SEMPRE executar primeiro!!!!! */
	funcao inicio() {
		inteiro opcaoUsuario//guardar a opção do usuario da vez
		logico executar = verdadeiro
		cadeia continuar
		
		imprimeMenuPrincipal()
		imprimeInstrucoes()
		faca {
			imprimeTelaJogo()
			//
			leia(opcaoUsuario)
			se(validaAcaoUsuario(opcaoUsuario)){
				se (contadorJogadasValidas >=8){//valida fim de jogo - EMPATE
					escreva("FIM DE JOGO -  Deu  Velha (Empate)!!!! \n1")
					funcaoContinuar()
					executar = falso
				}senao {//jogada valida			
					contadorJogadasValidas++
					posicoes[opcaoUsuario-1] = jogadorDaVez //marcar simbolo do jogador
					//verificar AQUI se há vencedor
					trocaJogador()
				}
			}
		} enquanto(executar == verdadeiro)
	}	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3220; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */