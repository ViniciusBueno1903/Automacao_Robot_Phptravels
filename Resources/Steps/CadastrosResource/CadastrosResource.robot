*** Settings ***
Documentation   Resource para os steps de cadastros
Resource        ../../Steps/CommonsResource.robot
Resource        ../../../resources/variables/Locators/CadastrosLocators.robot

*** Keywords ***

Dado que o usuário esteja no site phptravels
    Acessar site phptravels

Quando preencher todos os dados com dados válidos
    Informar todos os dados

Quando preencher todos os dados com dados válidos menos o e-mail
    Informar todos os dados menos o e-mail

E realizar o calculo da soma e preencher no campo Result
    Obter valores da soma
    Realizar a soma
    Preencher o campo result

E clicar no botão Submit
    Clicar no botão submit
    
Então o sistema deve apresentar a tela com a mensagem "${STRING}"
    Element Should Contain   class=completed     ${STRING}

Então o sistema deve apresentar a tela com a mensagem de obrigatoriedade do campo não preenchido
    Validar a mensagem apresentada
    
Informar todos os dados
    Input Text    name=${CAMPO_NOME}            Vinicius
    Input Text    name=${CAMPO_SOBRENOME}       Bueno    
    Input Text    name=${CAMPO_NOME_EMPRESA}    Prime    
    Input Text    name=${CAMPO_EMAIL}           teste@teste.com    

Informar todos os dados menos o e-mail
    Input Text    name=${CAMPO_NOME}            Vinicius
    Input Text    name=${CAMPO_SOBRENOME}       Bueno    
    Input Text    name=${CAMPO_NOME_EMPRESA}    Prime               

Obter valores da soma
    ${VALOR_1}   Get Text  Id=${CAMPO_NUMERO_1}    
    ${VALOR_2}   Get Text  id=${CAMPO_NUMERO_2}
    Set test Variable         ${VALOR_1}
    Set test Variable         ${VALOR_2}

Realizar a soma
    ${RESULTADO}    Evaluate    ${VALOR_1} + ${VALOR_2}
    Set test Variable           ${RESULTADO}
    
Preencher o campo result
    Input Text    id=${CAMPO_RESULTADO}    ${RESULTADO}

Clicar no botão submit
    Click Element     id=${BOTÃO_SUBMIT}
    Sleep    3S

Validar a mensagem apresentada
    ${alert_text}    Handle Alert     action=accept 
    Should Contain   ${alert_text}    Please type your email name
