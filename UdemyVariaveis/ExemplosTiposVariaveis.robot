***Settings***
Documentation      Exemplo de tipos de variaveis: Simples, Listas e Dicionarios

***Variables***
#Simples
${GLOBAL_SIMPLES}   Vamos ver os tipos de variaveis no robot!

#Tipo Lista
@{FRUTAS}           morango  banana  maça  uva  abacaxi

#Tipo Dicionario
&{PESSOA}           nome=teste   email=teste@gmail.com   idade=25   sexo=masculino

***Test Cases***
Caso de teste de exemplo 01
    Uma keyword qualquer 01

***Keywords***
Uma keyword qualquer 01
    #Simples
    Log     ${GLOBAL_SIMPLES}

    #Lista
    Log     Tem que ser maca: ${FRUTAS[2]} e Essa é morango: ${FRUTAS[0]}

    #Dicionario
    Log     Nome: ${PESSOA.nome}  
    Log     Email: ${PESSOA.email}