//PROJETO DE APRENDIZAGEM - Rascunho do projeto a ser implementado
programa {
  inclua biblioteca Texto --> tx
  inteiro notas[4]
  funcao inicio() {
    inteiro quantidade, resposta,opcaoMenuPrincipal=999
    logico notasColetadas = falso
    logico madiasCalculadas = falso

    escreva("Seja Bem vindo!!! \n")
    escreva("Insira a quantidade de alunos: ")
    leia(quantidade)
    limpa()
    retornaNotas()

    enquanto(opcaoMenuPrincipal != 5){//diferente da opcao sair
      imprimeMenuPrincipal()
      leia(opcaoMenuPrincipal)
      escreva("\n")
      se(opcaoMenuPrincipal != 5){//diferente da opcao sair
        //declarar as quatro variaveis de vetor com o tamanho que o professor solicitou

        se(opcaoMenuPrincipal == 1){
          limpa()
          imprimeCabecalho("cadastro de notas")
          //TODO - implementar o cadastro
          //TODO - imprimir um menu para ir solicitando as notas dos alunos
          escreva("Voce selecionou a opção cadastrar \n")
          escreva("Iremos coletar as tres notas de todos os alunos \n")
          //TODO - utilizar 3 laços de repetição (ex: para) para coletar todas as notas de todos os alunos
          escreva("Coletando N1 \n")
          escreva("Coletando N2 \n")
          escreva("Coletando N3 \n")

          escreva("Fim da coleta. Voltando ao menu principal \n")
          escreva("------------------------------------------------------------\n")
          notasColetadas = verdadeiro
        } senao se(opcaoMenuPrincipal == 2){
          limpa()
          imprimeCabecalho("listagem de notas")
          //TODO - implementar a listagem de notas (se houver) (dicas: utilize uma variavel booleana para saber se já foram coletadas as notas)
          //pode usar variavel booleana

          se(notasColetadas e madiasCalculadas){
            imprimeNotas(quantidade)
          }senao{
            imprimeErro("As notas não foram calculadas")
          }
        }senao se(opcaoMenuPrincipal == 3){
          limpa()
          imprimeCabecalho("calculo de medias")
          //TODO - implementar calculo de medias
          escreva("voce selecionou a opcao Calcular as medias \n")
          se(notasColetadas){
            escreva("A notas estão presentes \n")
            escreva("calculando as notas \n")
            madiasCalculadas = verdadeiro

          }senao{
            imprimeErro("Você não coletou as notas !!!")
          }
        }senao se(opcaoMenuPrincipal == 4){
          limpa()
          imprimeCabecalho("alteração de notas")
          //TODO - implementar alteração de notas
          //listar todas as notas e medias (verificar se as notas já foram calculadas)
          //solicitar ao usuario que selecione um dos alunos da lista
          //então solicitar ao usuario qual das notas sera alterada
          //solicitar a nova nota
          //perguntar ao usuario se ele deseja alterar outra nota deste ou de outro aluno
          //se sim, repetir o processo
        }
        
      }
    }
  } 

  //--------------------------------------------------------------------------------------------------
  funcao retornaNotas(){
    para(inteiro i=0;i<4;i++){
      se(i+5 <=10)
        notas[i] = i+5
      senao
        notas[i] = i
    }
  }
  //--------------------------------------------------------------------------------------------------
  funcao formataMensagem(cadeia mensagem, inteiro tamanhoLinha){
    mensagem = "| " + mensagem
    cadeia mensgFormatada = tx.preencher_a_direita(" ",tamanhoLinha-1, mensagem) + "|\n"
    escreva(mensgFormatada)
  }
  //--------------------------------------------------------------------------------------------------
  funcao imprimeNotas(inteiro quantidade){
    escreva("_______________________________________________ \n")
    escreva("POS  |   N1    |   N2   |   N3   |   MEDIA   | \n")
    para(inteiro not = 0; not<quantidade; not++){
      escreva(not, "    |   ",notas[0],"    |   ",notas[1],"   |   ",notas[2],"   |    ",notas[3],"     | \n")
    }
    escreva("_______________________________________________ \n")
  }

  funcao imprimeMenuPrincipal(){
    cadeia linhaImpressa = "+_________________MENU PRINCIPAL__________________+"
    inteiro tamanhoLinhaDivisoria = tx.numero_caracteres(linhaImpressa)
    escreva(linhaImpressa,"\n")
    formataMensagem("1 - Cadastrar notas", tamanhoLinhaDivisoria)
    formataMensagem("2 - Listar as notas e suas medias", tamanhoLinhaDivisoria)
    formataMensagem("3 - Realizar o calculo das medias ", tamanhoLinhaDivisoria)
    formataMensagem("4 - Alterar a nota de um determinado aluno ", tamanhoLinhaDivisoria)
    formataMensagem("5 - SAIR", tamanhoLinhaDivisoria)
    escreva(linhaImpressa,"\n")
    escreva("Informe uma opção: ")
  }

  funcao imprimeCabecalho(cadeia nomeMenu){
    nomeMenu = "  MENU - " + nomeMenu
    inteiro tamanho = tx.numero_caracteres(nomeMenu)
    cadeia linha = "+_"
    para(inteiro i = 0; i< tamanho; i++){
      linha +="_"
    }
    linha +="_+"

    escreva(linha, "\n")
    escreva(tx.caixa_alta(nomeMenu),"\n")
    escreva(linha, "\n")
  }
  funcao imprimeErro(cadeia erro){
    erro = "  ERRO - " + erro
    inteiro tamanho = tx.numero_caracteres(erro)
    cadeia linha = "*-"
    para(inteiro i = 0; i< tamanho; i++){
      linha +="-"
    }
    linha +="-*"

    escreva(linha, "\n")
    escreva(erro,"\n")
    escreva(linha, "\n")
  }
}