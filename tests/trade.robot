*** Settings ***
Documentation       Testes de negociação de figurinhas da copa

Resource            ../resources/main.resource

Test Setup          Iniciar Test
Test Teardown       Finalizar Test


*** Test Cases ***
Deve trocar a figurinha do Neymar Legend
    Fazer Login
    Buscar Figura            legend
    Selecionar Figurinha     Neymar Jr
    Abrir Whatsapp
    Whatsapp Message         Neymar Jr
