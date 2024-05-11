*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}                  https://automacao.qacoders-academy.com.br/login 
${email_admInput}       //input[contains(@type,'text')]
${senha_admInput}       //input[contains(@type,'password')]
${clickButton}          //button[contains(@id,'login')]
${clickCadastros}       //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Cadastros')]
${clickDiretorias}      //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Diretorias')]


*** Keywords ***
Abrir o navegador 
    Open Browser    browser=headlesschrome
    Maximize Browser Window

Fechar o navegador
    Close Browser
Passo 1 - Acessar a página de login
    Go To    url=${URL}

Passo 2 - Digitar um e-mail
    Wait Until Element Is Visible    locator=${email_admInput}
    Input Text                       locator=${email_admInput}     text=sysadmin@qacoders.com
    Sleep    5s

Passo 3 - Digitar uma senha
    Wait Until Element Is Visible    locator=${senha_admInput}
    Input Password                   locator=${senha_admInput}    password=1234@Test
    Sleep    5s

Passo 4 - Clicar em entrar
    Wait Until Element Is Visible    locator=${clickButton}
    Click Button                     locator=${clickButton}
    Sleep    5S

Passo 5 - Clicar em Cadastros
    Wait Until Element Is Visible    locator=${clickCadastros}
    Click Element                    locator=${clickCadastros}
    Sleep    5S

Passo 6 - Clicar em Diretorias 
    Wait Until Element Is Visible    locator=${clickDiretorias}
    Click Element                    locator=${clickDiretorias}
    Sleep    5S