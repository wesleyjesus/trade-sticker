*** Settings ***
Documentation       Arquivo principal do projeto

Library             Browser
Resource            pages/login.resource
Resource            pages/dashboard.resource


*** Keywords ***
Fazer Login
    Go To Login Page
    Submeter Credenciais    papito@gmail.com    vaibrasil
    Usuario Logado

Iniciar Test
    New Browser    headless=false

Finalizar Test
    Sleep    1
    Take Screenshot
