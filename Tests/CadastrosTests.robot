*** Settings ***
Documentation   Testes de cadastros do site phptravels
Resource        ../Resources/Steps/CadastrosResource/CadastrosResource.robot
Test Setup      Abrir navegador 
Test Teardown   Fechar Navegador
Library         SeleniumLibrary

*** Test Cases ***

CT01: Criar um novo cadastro com sucesso
    [Documentation]  Realizar um cadastro com sucesso
    [Tags]  CT01
    Dado que o usuário esteja no site phptravels
    Quando preencher todos os dados com dados válidos
    E realizar o calculo da soma e preencher no campo Result
    E clicar no botão Submit
    Então o sistema deve apresentar a tela com a mensagem "Thank you!"

CT02: Tentar fazer um cadastro sem um campo obrigatório
    [Documentation]  Realizar um cadastro não informando e-mail
    [Tags]  CT02
    Dado que o usuário esteja no site phptravels
    Quando preencher todos os dados com dados válidos menos o e-mail
    E realizar o calculo da soma e preencher no campo Result
    E clicar no botão Submit
    Então o sistema deve apresentar a tela com a mensagem de obrigatoriedade do campo não preenchido