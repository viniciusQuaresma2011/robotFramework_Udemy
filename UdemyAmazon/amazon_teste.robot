*** Settings ***
Documentation    Esse  caso de test testa o site da Amazon.com.br
Resource         ../../base/base.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador



*** Test Cases ***

Caso de Teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]    Este teste verifica o menu Eletrônicos do site da Amazon
    ...                E verificar a categoria Computadores e Informáticas
    [Tags]             menus
    Acessar a home page do site Amazon.com.br
    # Entrar no menu "Eletrônicos"
    # Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
    # Verificar se aparece a frase "Eletrônicos e Tecnologia"
    # Verificar se aparece a categoria "Computadores e Informática"


Caso de Teste 02 - Pesquisa de um Produto
    [Documentation]    Este teste verifica a busca de um produto
    [Tags]             busca_produto    lista_busca
    # Acessar a home page do site Amazon.com.br
    # Digitar o nome do produto "Xbox Series S" no campo de pesquisa
    # Clicar no botão de pesquisa
    # O sistema deve exibir a tela com o resultado da pesquisa se está listando o produto pesquisado 