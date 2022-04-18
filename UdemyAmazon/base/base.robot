*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${URL}                    http://www.amazon.com.br
${MENU_ELETRONICO}        xpath=/html/body/div[1]/div[2]/div[2]/div[1]/div[1]/div/div/div/div/div[1]/div/div/div/h1

*** Keywords ***
Abrir o navegador
    Open Browser    browser=edge        url=${URL}


Fechar o navegador
    Close Browser


Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible        Locator=${MENU_ELETRONICO}
    3s