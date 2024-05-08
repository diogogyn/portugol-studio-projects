//PROJETO DE APRENDIZAGEM - Rascunho do projeto a ser implementado
programa {
  inclua biblioteca Texto --> tx
  inteiro notas[4]
  caracter opcaoMenuPrincipal
  funcao inicio() {
    inteiro quantidadeAlunos, resposta
    logico notasColetadas = falso
    logico madiasCalculadas = falso
    escreva("DISCLAIMER - Este código tem por finalidade oferecer uma sugestão de implementação da interface com o usuário.\n")
    escreva("Este código está incompleto e com informações impresssas de forma estatica. Logo, adapte este código para suas necessidades, para realização da atividade proposta\n")
    escreva("E entenda que este é apenas um exemplo de como implementar a interface. Há formas melhores de desenvolver este código !!!\n")
    funcaoContinuar()
    limpa()
    escreva("Seja Bem vindo!!! \n")
    escreva("Insira a quantidade de alunos: ")
    leia(quantidadeAlunos)

    //declare os vetores de notas e medias aqui:
    //ex: nota1[1]
    real nota1 //esta é uma variavel de teste que somente tem por objetivo simular o recebimento da nota dos alunos. troque por uma com vetor no futuro
    real nota2 //esta é uma variavel de teste que somente tem por objetivo simular o recebimento da nota dos alunos. troque por uma com vetor no futuro
    real nota3 //esta é uma variavel de teste que somente tem por objetivo simular o recebimento da nota dos alunos. troque por uma com vetor no futuro
    real medias = 0 //esta é uma variavel de teste que somente tem por objetivo simular o recebimento da nota dos alunos. troque por uma com vetor no futuro
    limpa()
    //retornaNotas()
    faca {
      limpa()
      imprimeMenuPrincipal()
      escreva("Informe uma opção: ")
      leia(opcaoMenuPrincipal)

      se(opcaoMenuPrincipal!= '1' e opcaoMenuPrincipal != '2' e opcaoMenuPrincipal != '3' e opcaoMenuPrincipal != '4' e opcaoMenuPrincipal != '5'){
        imprimeErro("Opção invalida para o menu, tente novamente!!!")
        funcaoContinuar()
      } senao {
        se(opcaoMenuPrincipal == '1'){//cadastrar
          limpa()
          imprimeCabecalho("cadastro de notas")
          para(inteiro aluno = 0; aluno < quantidadeAlunos; aluno++){
            escreva("Cadastro: Aluno ", aluno, ": \n")
            escreva("Informe a nota 1: \n")
            leia(nota1)
            escreva("Informe a nota 2: \n")
            leia(nota2)
            escreva("Informe a nota 3: \n")
            leia(nota3)
          }
          escreva("------------------FIM CADASTRAR NOTA----------------------------------\n")
          funcaoContinuar()
        } senao se(opcaoMenuPrincipal == '2'){//listar
          limpa()
          imprimeCabecalho("Listar notas")
          para(inteiro aluno = 0; aluno < quantidadeAlunos; aluno++){
            escreva("Notas cadastradas - Aluno ", aluno, ": \n")
            escreva("Nota 1: ",nota1," | Nota 2: ",nota2," | Nota 3: ", nota3," | MEDIA: ", medias,"\n")
          }
          escreva("------------------FIM LISTAR NOTA----------------------------------\n")
          funcaoContinuar()
        } senao se(opcaoMenuPrincipal == '3'){//calcular media
          limpa()
          imprimeCabecalho("Calcular media")
          escreva("media calculada com sucesso")
          escreva("------------------FIM LISTAR NOTA----------------------------------\n")
          funcaoContinuar()
        } senao se(opcaoMenuPrincipal == '4'){//alterar nota
          limpa()
          imprimeCabecalho("Alterar nota")
          //boa sorte a partir daqui
          //TODO - implementar alteração de notas
          //listar todas as notas e medias (verificar se as notas já foram calculadas)
          //solicitar ao usuario que selecione um dos alunos da lista
          //então solicitar ao usuario qual das notas sera alterada
          //solicitar a nova nota
          //perguntar ao usuario se ele deseja alterar outra nota deste ou de outro aluno
          //se sim, repetir o processo
          escreva("------------------FIM LISTAR NOTA----------------------------------\n")
          funcaoContinuar()
        }
      }
    } enquanto(opcaoMenuPrincipal != '5')

    escreva("------------------FIM DO PROGRAMA----------------------------------\n")
  } 

  //--------------------------------------------------------------------------------------------------
  funcao funcaoContinuar(){
    caracter teclaCOntinuar
    escreva("Tecle ENTER para continuar \n")
    leia(teclaCOntinuar)
  }
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