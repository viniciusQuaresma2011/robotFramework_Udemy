***Settings***
Documentation   Exemplo de uso de variáveis como argumentos em Keywords

***Variables***
&{PESSOA}       nome=teste   email=teste@gmail.com   idade=25   sexo=masculino

***Test Cases***
Caso de teste de exemplo 01
    Uma keyword qualquer 01

***Keywords***
Uma keyword qualquer 01
    Uma subkeyword com argumentos      ${PESSOA.nome}   ${PESSOA.email}
    ${MENSAGEM_ALERTA}    Uma subkeyword com retorno    ${PESSOA.nome}     ${PESSOA.idade}
    Log     ${MENSAGEM_ALERTA}

Uma subkeyword com argumentos
    [Arguments]     ${NOME_USUARIO}     ${EMAIL_USUARIO}
    Log             Usuario: ${NOME_USUARIO}
    Log             Email: ${EMAIL_USUARIO}

Uma subkeyword com retorno
    [Arguments]     ${NOME_USUARIO}     ${IDADE_USUARIO}
    ${MENSAGEM}     Set Variable If     ${IDADE_USUARIO}<15     Nao Autorizado o usuario ${NOME_USUARIO} é menor
    [Return]        ${MENSAGEM}