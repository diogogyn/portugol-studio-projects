programa {
  inteiro tempo[10]
  funcao continue(){
    cadeia enter
    escreva("Pressione ENTER para continuar...\n")
    leia(enter)
  }
  funcao fichaNavegacao(){
    limpa()
    escreva("------------------------------------------------------------- \n")
    escreva("|Referencias           | RM  |  DISTÂNCIA  | TEMPO  |  ETO \n")
    escreva("|Través NW Liberty	 | 254 |      2      |   2    |  1020 \n")
    escreva("|Vertical Teresopolis	 | 254 |      5      |   4    |  1024 \n")
    escreva("|Traves S Pista Terra	 | 254 |      5      |   4    |  1028 \n")
    escreva("|Vertical SATO		 | 140 |      4      |   3    |  1031 \n")
    escreva("|Vertical GO 457	      | 203 |      8      |   6    |  1037 \n")
    escreva("|Vertical GO		 | 205 |      5      |   4    |  1041 \n")
    escreva("------------------------------------------------------------- \n")
    continue()
  }

  funcao menuPrincipal(){
    limpa()
    escreva("------------------------------------------------------------- \n")
    escreva("MENU PRINCIPAL\n")
    escreva("1 - Definir Origem/Destino e horario de decolagem \n")
    escreva("2 - Inserir pontos de navegação\n")
    escreva("3 - Calcular Dados(Tempo, ETO)\n")
    escreva("4 - Imprimir Ficha de navageção")
    escreva("0 - Voltar ao menu anterior\n")
    escreva("------------------------------------------------------------- \n")
    //continuar()
  }

  funcao menuInsercaoPontosReferencia(){

  }

  funcao calcularDados(){

  }

  funcao menuDefinirOrigemDestino(){
    logico continuar
    caracter opcaoMenu
    faca{
    limpa()
    escreva("------------------------------------------------------------- \n")
    escreva("DEFINICAO DE ORIGEM E DESTINO\n")
    escreva("Selecione uma opção:\n")
    escreva("1 - Definir e configurar ORIGEM/DESTINO\n")
    escreva("2 - Visualizar Origem/Destino\n")
    escreva("3 - Determinar horario decolagem (UTC)\n")
    escreva("0 - Voltar ao menu anterior\n")
    escreva("Informe uma opção: ")
    leia(opcaoMenu)
    escolha(opcaoMenu)  
      {  
        caso '1':  
          definirOrigemDestino()
        pare
        caso '2':  
          //visualizarOrigemDestino()
        pare
        caso '3':  
          definirHorarioDecolagem()
        pare
        caso contrario:  
          mensagemOpcaoInvalida()
      }
    continue()
    definirOrigemDestino()
    continue()
    }enquanto(continuar == verdadeiro)

  }

  funcao definirHorarioDecolagem(){
    limpa()
    escreva("------------------------------------------------------------- \n")
    escreva("DEFINICAO DE HORARIO DE DECOLAGEM\n")
    escreva("Informe o horario de decolagem: \n")

    continuar()
  }

  funcao definirOrigemDestino(){
    limpa()
    escreva("------------------------------------------------------------- \n")
    escreva("DEFINICAO DE ORIGEM\n")
    escreva("Informe codigo ICAO: \n")
    escreva("Informe o fuso horario GMT(-12 a +12): \n")
    limpa()
    escreva("DEFINICAO DE DESTINO\n")
    escreva("Informe codigo ICAO: \n")
    escreva("Informe o fuso horario GMT(-12 a +12): \n")

  }

  funcao mensagemOpcaoInvalida(){
    escreva("EERO - Opção invalida. Verifique e tente novamente")
    continue()
  }

  funcao inicio() {
    logico continuar
    caracter opcaoPrincipal
    faca {
      menuPrincipal()
      escreva("Informe uma opção: ")
      leia(opcaoPrincipal)
      escolha(opcaoPrincipal)  
      {  
          caso '1':  
            menuDefinirOrigemDestino()
          pare  
        
          caso '2':  
            menuInsercaoPontosReferencia()
          pare  
          caso '3':  
            calcularDados()
          pare  
          caso '4':  
              fichaNavegacao()  
          pare  
          caso '0':  
              continuar = falso
          pare
          caso contrario:  
            mensagemOpcaoInvalida()
      }  

    } enquanto (continuar)
    escreva("FIM DO PROGRAMA\n")
    
    fichaNavegacao()
    
    
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1517; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */