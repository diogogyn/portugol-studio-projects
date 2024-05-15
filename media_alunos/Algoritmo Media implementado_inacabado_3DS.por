//Atividade orientada - Modelagem de sistemas
// corrigindo bugs e melhorias
//3º DS
programa {
  inclua biblioteca Texto --> tx
  inteiro notas[4]
  inteiro quantidadeAlunos, resposta,opcaoMenuPrincipal=999
  logico notasColetadas = falso
  logico madiasCalculadas = falso
  caracter teclaCOntinuar

  funcao formataMensagem(cadeia mensagem, inteiro tamanhoLinha){
    mensagem = "| " + mensagem
    cadeia mensgFormatada = tx.preencher_a_direita(" ",tamanhoLinha-1, mensagem) + "|\n"
    escreva(mensgFormatada)
  }

  funcao cadeia formataNumero(inteiro numero){
    retorne tx.preencher_a_esquerda("0",2, ""+numero)
  }
  funcao cadeia formataReal(real numero){
    retorne tx.preencher_a_esquerda("0",2, ""+numero)
  }
  //--------------------------------------------------------------------------------------------------
  funcao funcaoContinuar(){
    escreva("Tecle ENTER para continuar \n")
    leia(teclaCOntinuar)
  }
  //--------------------------------------------------------------------------------------------------
  funcao inteiro menuPrincipal(){
    inteiro opcaoMenu
    imprimeMenuPrincipal()
    leia(opcaoMenu)

    retorne opcaoMenu
  }

  funcao menuCadastro(real nota1[], real nota2[], real nota3[]){
    para(inteiro i=0; i< quantidadeAlunos; i++){
      limpa()
      imprimeCabecalho("cadastro de notas")
      escreva("Você irá cadastrar nota para ", quantidadeAlunos, " alunos \n")    
      escreva("Nota para Aluno ", i+1, "\n") 
      escreva("Informe a 1º nota: ")
      leia(nota1[i])
      escreva("Informe a 2º nota: ")
      leia(nota2[i])
      escreva("Informe a 3º nota: ")
      leia(nota3[i])
    }
    notasColetadas = verdadeiro
    funcaoContinuar()
  }

  funcao menuListarNotas(real nota1[], real nota2[], real nota3[], real medias[]){
    limpa()
    imprimeCabecalho("listagem de notas")
    imprimirNotas(nota1, nota2, nota3, medias)
    funcaoContinuar()
  }

  funcao imprimirNotas(real nota1[], real nota2[], real nota3[], real medias[]){
    se(notasColetadas){
      escreva("_______________________________________________ \n") 
      escreva("POS   |   N1    |   N2   |   N3   |   MEDIA   | \n")
      escreva("----------------------------------------------- \n")  
      para(inteiro not = 0; not<quantidadeAlunos; not++){
        cadeia impressao = formataNumero(not) + "    |   " + formataReal(nota1[not]) +"    |   "+formataReal(nota2[not]) + "   |   "+formataReal(nota3[not]) + "   |    "
        se(madiasCalculadas){
          impressao = impressao + formataReal(medias[not])+"     | \n"
        } senao {
          impressao = impressao + "nA     | \n"
        }
        escreva(impressao)
      }
      escreva("_______________________________________________ \n")
    }senao{
      imprimeErro("Não há notas coletadas")
    }
  }

  funcao menuCalcularMedias(real nota1[], real nota2[], real nota3[], real medias[]){
    inteiro opcaoMedia=0, peso1 = 1, peso2 = 1, peso3 = 1
    limpa()
    imprimeCabecalho("Calculo de médias")
    se(notasColetadas){
      se(madiasCalculadas == verdadeiro) {
        escreva("AVISO - já tem medias calculadas. O calculo irá sobrescrever os valores atuais.")
      }
      limpa()
      imprimeCabecalho("Calculo de médias")
        
      faca {
        escreva("Deseja calcular a média em qual modalidade? \n")
        escreva("1 - Aritimetica \n")
        escreva("2 - Ponderada \n")
        escreva("Selecione uma opção:\n")
        leia(opcaoMedia)
        se(opcaoMedia != 1 e opcaoMedia != 2)
          imprimeErro("Opção invalida, tente novamente")
      } enquanto((opcaoMedia!= 1 e opcaoMedia!= 2) ou (opcaoMedia < 1 e opcaoMedia > 2))
      
      limpa()
      imprimeCabecalho("Calculo de médias")
      se(opcaoMedia == 2){//ponderada
        escreva("AVISO - Você escolheu calcular média ponderada! \n")
        escreva("Informe o peso para N1:\n")
        leia(peso1)
        escreva("Informe o peso para N2:\n")
        leia(peso2)
        escreva("Informe o peso para N3:\n")
        leia(peso3)
        escreva("--------------------------------\n")
      } senao{
        escreva("AVISO - Você escolheu calcular média aritimetica!\n")
      }

      para(inteiro i=0; i<quantidadeAlunos; i++){
        medias[i] = ((nota1[i]*peso1) + (nota2[i]*peso2) + (nota3[i]*peso3)) / (peso1 + peso2 + peso3)
      }
      escreva("Médias calculadas com sucesso\n")
      madiasCalculadas = verdadeiro
    } senao {
      imprimeErro("Não foram coletadas as notas para permitir o calculo das médias")
    }
    funcaoContinuar()
  }

  funcao menuAlterarNota(real nota1[], real nota2[], real nota3[], real medias[]){
    inteiro opcaoPosAluno = 0
    faca{
      limpa()
      imprimeCabecalho("Alteração de notas")
      se(notasColetadas){
        escreva("Para alterar uma determinada nota, por favor selecione qual aluno deseja alterar:\n")
        escreva("Selecione um aluno pela POS:\n")
        leia(opcaoPosAluno)

        se(opcaoPosAluno >=0 e opcaoPosAluno < quantidadeAlunos){
          inteiro opcaoNota
          faca {
            limpa()
            imprimeCabecalho("Alteração de notas")
            escreva("Qual nota deseja modificar?\n")
            escreva("1 - Nota 1\n")
            escreva("2 - Nota 2\n")
            escreva("3 - Nota 3\n")
            leia(opcaoNota)
            se(opcaoNota <1 ou opcaoNota > 3){
              imprimeErro("Você escolheu uma opção invalida. Por favor tente novamente")
              opcaoNota = 1
              funcaoContinuar()
            } senao {
              se(opcaoNota == 1){
                escreva("Informe a nova nota 1:\n")
                leia(nota1[opcaoPosAluno])
              } senao se(opcaoNota == 2){
                escreva("Informe a nova nota 2:\n")
                leia(nota2[opcaoPosAluno])
              } senao {
                escreva("Informe a nova nota 3:\n")
                leia(nota3[opcaoPosAluno])
              }
              escreva("----------------DONE------------------------\n")
              escreva("Deseja alterar outra nota deste aluno?(1 - p/ SIM e Qualquer tecla para NÃO) \n")
              leia(opcaoNota)
              madiasCalculadas = falso
            }            
          } enquanto(opcaoNota == 1)
          escreva("----------------DONE------------------------\n")
          
          escreva("Deseja alterar outro aluno?(1- p/ SIM e Qualquer tecla para NÃO) \n")
          leia(opcaoPosAluno)
        } senao {
          imprimeErro("Você escolheu um aluno invalido. Favor verifique o aluno selecionado e tente novamente")
          opcaoPosAluno = 1
          funcaoContinuar()
        }        
      } senao {
        imprimeErro("Não foram coletadas as notas para permitir a alteração de notas")
      }
    } enquanto(opcaoPosAluno == 1)
    funcaoContinuar()
  }

  //--------------------------------------------------------------------------------------------------
  funcao imprimeMenuPrincipal(){
    limpa()
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
  /* ************************************************************************************************** */
  funcao inicio() {
    inteiro opcaoMenuPrincipal=999
    escreva("Seja Bem vindo!!! \n")
    escreva("Insira a quantidade de alunos: ")
    leia(quantidadeAlunos)
    limpa()
    real nota1[quantidadeAlunos]
    real nota2[quantidadeAlunos]
    real nota3[quantidadeAlunos]
    real medias[quantidadeAlunos]
    faca{
      opcaoMenuPrincipal = menuPrincipal()
      se(opcaoMenuPrincipal != 5){
        se(opcaoMenuPrincipal == 1){//cadastro
          menuCadastro(nota1, nota2, nota3)
        } senao se(opcaoMenuPrincipal == 2){//listagem
          menuListarNotas(nota1, nota2, nota3, medias)
        } senao se(opcaoMenuPrincipal == 3){//calculo media
          menuCalcularMedias(nota1, nota2, nota3, medias)
        } senao se(opcaoMenuPrincipal == 4){//alterar
          menuAlterarNota(nota1, nota2, nota3, medias)
        } senao se(opcaoMenuPrincipal == 5){//sair
          imprimeCabecalho("Fim do programa")
        } senao{
          limpa()
          imprimeErro("Você escolheu uma opção invalida, por favor tente novamente")
        }
      }     

    } enquanto(opcaoMenuPrincipal != 5)
    


  }
}