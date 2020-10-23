*** Settings ***
Library     app.py

***Test Cases ***
Deve retornar mensagem de boas vindas
    ${result}=          welcome         Edson
    Should Be Equal     ${result}       Olá Edson, Bem vindo ao curso básico de Robot Framework!!!