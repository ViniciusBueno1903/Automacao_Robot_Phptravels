*** Settings ***
Documentation   Resource para os steps compartilhados
Resource        ../../resources/variables/Locators/CadastrosLocators.robot
Library         SeleniumLibrary

*** Keywords ***

Abrir navegador
    Open Browser    https://www.google.com    chrome
    Maximize Browser Window
    Sleep    2s

Acessar site phptravels
    Go To    https://phptravels.com/demo/
    
Fechar Navegador
    Close Browser