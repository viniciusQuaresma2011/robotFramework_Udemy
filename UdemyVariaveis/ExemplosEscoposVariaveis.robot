***Settings***
Documentation   Exemplo de escopo de variáveis: Globais, Suite, Teste(test case) e Local(keyword)
Library         String

***Variables***
${GLOBAL_INSTANCIADA}   Minha variavel GLOBAL_INSTANCIADA foi instanciada para a suite

***Test Cases***
Caso de teste de exemplo 01
    Uma keyword qualquer 01
    Uma keyword qualquer 02

Caso de teste de exemplo 02
    Uma keyword qualquer 02
    Uma keyword qualquer 03

Caso de teste de exemplo 03
    Uma keyword qualquer 04

***Keywords***
Uma keyword qualquer 01
    ${GLOBAL_CRIADA_EM_TEMPO_EXECUCAO}      Generate Random String

    #A variável "global" pode ser utilizada em todas as suites em execução
    Set Global Variable    ${GLOBAL_CRIADA_EM_TEMPO_EXECUCAO}

    #A variável "suite" pode set utilizada somente nos testes da suite em execução
    Set Suite Variable     ${SUITE_CRIADA_EM_TEMPO_EXECUCAO}       Variavel da suite

    #A variável "test" pode ser utilizada somente nas todas as keywords do teste em execução
    Set Test Variable      ${TESTE_01}         Variavel do teste 01
    Log         ${TESTE_01}

    #A variavel "Local" pode ser utilizada somente na keyword em execução
    ${LOCAL}        Set Variable       Variavel local da keyword 01

Uma keyword qualquer 02
    ${LOCAL}    Set Variable       Variavel local da keyword 02
    Log     ${LOCAL}
    Log     ${GLOBAL_INSTANCIADA} / ${GLOBAL_CRIADA_EM_TEMPO_EXECUCAO} / ${SUITE_CRIADA_EM_TEMPO_EXECUCAO} / ${LOCAL}
    #A keyword abaixo vai funcionar no Caso de Teste 01 e falhar no caso de Teste 02
    Log     ${TESTE_01}