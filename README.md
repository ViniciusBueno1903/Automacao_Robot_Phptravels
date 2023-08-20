# Automacao_Prime
Este repositório contém exemplos de automação de testes usando o Robot Framework

# Pré-requisitos
Antes de executar os testes neste projeto, certifique-se de que você tenha os seguintes componentes instalados:
   Robot Framework;
   SeleniumLibrary;

1. Instale o Robot Framework usando o seguinte comando:
   pip install robotframework

2. Instale a biblioteca SeleniumLibrary com o seguinte comando:
   pip install robotframework-seleniumlibrary
   
Se você não tem a SeleniumLibrary instalada, os testes automatizados de interface web não funcionarão corretamente.

# Passo a Passo para executar o teste
   Certifique de estar na pasta "Tests" para executar a automação
   # Executar suite
   Digitar comando "robot CadastrosTests.robot"
   # Executar test 
   Digitar comando "robot --include <nome_da_tag> CadastrosTests.robot"
   
   EX:   robot --include CT01 CadastrosTests.robot
