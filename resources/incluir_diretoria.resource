*** Settings ***
Resource  ../resources/entrar_diretoria.resource
Library  SeleniumLibrary
Library    String

*** Variables ***
${incluirDiretoria}   //button[@class='css-fvzsut'][contains(.,'Novo Cadastro')]
${diretoriaInput}    //input[contains(@class,'MuiInputBase-input MuiInput-input css-mnn31')]
${clickSalvarNovo}   //button[@type='submit'][contains(.,'SALVAR NOVO')]
${seletor_botao}    (//button[contains(@class,'css-kab9pu')])[2]

*** Keywords ***
Passo 00 - gerar randomico 
    ${palavra_randomica}    Generate Random String    length=8    chars=[LETTERS]
    ${palavra_randomica}    Convert To Lower Case     ${palavra_randomica}
    Set Test Variable    ${CadastroEmpresa}    ${palavra_randomica}
    Log                  ${CadastroEmpresa} 
Passo 7 - Clicar em Novo Cadastro
    Wait Until Element Is Visible     locator=${incluirDiretoria}
    Click Button                      locator=${incluirDiretoria}     
    Sleep    5s

Passo 8 - Digitar nome diretoria
    Wait Until Element Is Visible     locator=${diretoriaInput} 
    Input Text    ${diretoriaInput}    ${CadastroEmpresa}
    Sleep    5s

Passo 9 - Clicar em salvar novo 
    Wait Until Element Is Visible    locator=${clickSalvarNovo}
    Click Button                     locator=${clickSalvarNovo}
    Sleep    5S

Passo 10 - Conferir Cadastro
    Element Should Be Visible       locator=${seletor_botao}
    Double Click Element            locator=${seletor_botao}
    Sleep    5S
    Page Should Contain             ${CadastroEmpresa}
    Sleep    5S
