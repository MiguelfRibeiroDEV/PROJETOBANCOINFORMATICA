programa {
  inclua biblioteca Matematica --> mat
  funcao inicio() {
    real menu, saque, saldo = 0, deposito, senha3,senha4,senha5,senha6, investimento, rendimento, meses
  caracter enter, simnao
  cadeia login, senha, login2, senha2, extrato = " "
  escreva("|---------------- AREA DE LOGIN - BANCO MIGUELITO ----------------|")
  escreva("\n|CRIE SEU LOGIN: ")
  leia(login)
  escreva("|CRIE SUA SENHA: ")
  leia(senha)
  limpa()
  
  
  
  escreva("|---------------- SEJA BEM VINDO! ----------------|")
  escreva("\n|CONFIRME LOGIN: ")
  leia(login2)
  escreva("|CONFIRME SENHA: ")
  leia(senha2)

  se(login2 != login ou senha2 != senha){
  enquanto(login2 != login ou senha2 != senha){
  escreva("|LOGIN OU SENHA INVALIDOS! TENTE NOVAMENTE -->")
  escreva("\n|LOGIN: ")
  leia(login2)
  escreva("|SENHA: ")
  leia(senha2)
  }
  }
  
  se(login2 == login e senha2 == senha){
  limpa(1)
  escreva("|LOGIN CONCLUIDO COM SUCESSO!\n")
  }

enquanto(verdadeiro){
escreva("\n\n|------------ MENU ------------|\n")
escreva("|1: SALDO -- ",mat.arredondar(saldo,2), "R$\n")
escreva("|2: SAQUE\n")
escreva("|3: DEPOSITO\n")
escreva("|4: EXTRATO\n")
escreva("|5: INVESTIMENTO\n")
escreva("|------------------------------|")
escreva("\n|0: SAIR\n")
escreva("|OPÇÃO --> ")
leia(menu)
limpa()

enquanto(menu != 1 e menu != 2 e menu != 3 e menu != 0 e menu != 4 e menu != 5){
escreva("|OPÇÃO INVALIDA! TENTE NOVAMENTE: ")
leia(menu)
}

escolha(menu){
  caso 1: 
   escreva("|DIGITE SUA SENHA -->")
   leia(senha3)
   se(senha3 != senha){
  enquanto(senha3 != senha){
  limpa()
  escreva("\n|SENHA INCORRETA! TENTE NOVAMENTE --> ")
  leia(senha3)
  }
   }
    escreva("|SALDO: DESEJA VIZUALIZAR O SALDO? (S/ PARA SIM E N/ PARA NAO): ")
    leia (simnao)
    se(simnao == "s" ou simnao == "S"){
    escreva("|SALDO IGUAL A: " + saldo, "\n")
    }
    senao se(simnao == "n" ou simnao == "N"){
    escreva("|APERTE 'ENTER' PARA CONTINUAR: ")
    leia (enter)
    }
    
    pare
    caso 2:
    escreva("|DIGITE SUA SENHA -->")
   leia(senha4)
   se(senha4 != senha){
  enquanto(senha4 != senha){
  limpa()
  escreva("\n|SENHA INCORRETA! TENTE NOVAMENTE --> ")
  leia(senha4)
  }
   }
    limpa()
    escreva("|DIGITE O VALOR DO SAQUE: ")
    leia(saque)
    se(saque <= saldo e saque >0){
    saldo = saldo - saque
    extrato = extrato + "|SAQUE ---- R$ " + saque + "\n"
    limpa()
    escreva("|SAQUE REALIZADO COM SUCESSO \n|NOVO SALDO: " + saldo, "\n")
    }
    senao{
    escreva("|VALOR INSUFICIENTE! \n")
    }
    
    pare
    caso 3:
    escreva("|DIGITE SUA SENHA -->")
   leia(senha5)
   se(senha5 != senha){
  enquanto(senha5 != senha){
  limpa()
  escreva("\n|SENHA INCORRETA! TENTE NOVAMENTE --> ")
  leia(senha5)
  }
   }
    limpa()
    escreva("|DIGITE O VALOR DO DEPOSITO: ")
    leia(deposito)
    
    se(deposito < 0){
    enquanto(deposito < 0){
    escreva("|VALOR INVALIDO! TENTE NOVAMENTE: ")
    leia(deposito)
    }
    }
    saldo = saldo + deposito
    extrato = extrato + "|SAQUE ---- R$ " + deposito + "\n"
    limpa()
    escreva("|DEPOSITO CONCLUIDO COM SUCESSO!\n")
    escreva("|NOVO SALDO: " + saldo, "\n")
    
    pare
    caso 4: 
    escreva("|EXTRATO: \n", extrato)
    caso 5:
    escreva("|DIGITE SUA SENHA -->")
   leia(senha6)
   se(senha6 != senha){
  enquanto(senha6 != senha){
  limpa()
  escreva("\n|SENHA INCORRETA! TENTE NOVAMENTE --> ")
  leia(senha6)
   limpa()
    }
   } 
    escreva("|DIGITE O VALOR DE INVESTIMENTO: ")
    leia(investimento)
    se(investimento > saldo){
    limpa()
    escreva("|VALOR INSUFICIENTE!")
    
    }
    senao {
    escreva("|DIGITE A QUANTIDADE DE MESES QUE DESEJA INVESTIR: ")
    leia(meses)
    saldo = saldo - investimento
    para(inteiro contador = 0; contador<meses ; contador++){
      rendimento = investimento * 1.02
      investimento = rendimento
    }
    saldo = saldo + investimento
   limpa()
    escreva("|PERFEITO! INVESTIMENTO CONCLUÍDO COM SUCESSO, NOVO SALDO: R$", mat.arredondar(investimento,2),"\n" )
    
    }
  
    pare
    caso 0: 
    se(menu == 0){
    escreva("|APERTE 'ENTER' PARA CONTINUAR: ")
    leia (enter)
    limpa()
    }

    

 }
 
 
}
    
  }
}
  
