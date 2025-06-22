Algoritmo "GERENCIADOR DE ACESSO"
//
//
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Reginaldo e Augusto
// Data atual  : 22/06/2025
Var

   senhas,usuarios: vetor[1..30] de Caracter
   login,senha,nivel: Caracter
   j: Inteiro
   achou_usuario,acesso: Logico

Inicio




   acesso <- falso
   achou_usuario <- falso


   // Cadastro de usuários e senhas de base
   usuarios[1] <- "professor"
   usuarios[2] <- "aluno"
   senhas[1] <- "admin"
   senhas[2] <- "cedup"

   acesso <- falso

   REPITA

      Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
      Escreval("                CONTROLE DE ACESSO")
      Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
      Escreval()
      Escreva("Informe Login de acesso: ")
      Leia(login)
      LimpaTela

      // Verifica login
      Para j de 1 ate 10 faca
         Se minusc(login) = minusc(usuarios[j]) ENTAO
            achou_usuario <- verdadeiro

            // Login encontrado, pede senha

            Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
            Escreval("                CONTROLE DE ACESSO")
            Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
            Escreval()
            Escreval("Login: ", login)
            Escreval()
            Escreva("Informe a senha: ")
            Leia(senha)

            Se minusc(senha) = minusc(senhas[j]) ENTAO
               acesso <- verdadeiro
               Se minusc(senha) = "admin" ENTAO
                  nivel <- "admin"
               Senao
                  nivel <- "user"
               FimSe
            Senao
               LimpaTela
               Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
               Escreval("                 SENHA INCORRETA!")
               Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
               Tempo(3000)
               Tempo(2)
               LimpaTela
            FimSe

         FimSe
      FimPara

      Se achou_usuario = falso ENTAO
         Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
         Escreval("               USUÁRIO NÃO CADASTRADO")
         Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
         Tempo(3000)
         Tempo(2)
         LimpaTela
      FimSe

   ATE acesso = verdadeiro

   Se acesso = verdadeiro ENTAO
      Escreval()
      Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
      Escreval("                  ACESSO LIBERADO                     ")
      Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
      Escreval()
      Escreval("Nível de acesso: ", maiusc(nivel))
      Tempo(3000)
      Tempo(1)
   FimSe
   LimpaTela



FIMALGORITMO