*** Settings ***
Resource  ../resources/entrar_diretoria.resource
Library  SeleniumLibrary

*** Variables ***
${clickNovoCadastro}   //input[contains(@class,'MuiInputBase-input MuiOutlinedInput-input MuiInputBase-inputSizeSmall css-1o6z5ng')]

*** Keywords ***
Passo 7 - Pesquisar Diretorias
    Wait Until Element Is Visible     locator=${clickNovoCadastro}
    Input Text                        locator=${clickNovoCadastro}     text=Operações&finanças
    Sleep    5S
