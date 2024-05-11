*** Settings ***
Resource         ../resources/entrar_diretoria.resource
Resource         ../resources/pesquisar_diretoria.resource
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases *** 
CENARIO DE TESTES: Pesquisar e Diretorias
    Passo 1 - Acessar a página de login 
    Passo 2 - Digitar um e-mail
    Passo 3 - Digitar uma senha
    Passo 4 - Clicar em entrar
    Passo 5 - Clicar em Cadastros
    Passo 6 - Clicar em Diretorias
    Passo 7 - Pesquisar Diretorias